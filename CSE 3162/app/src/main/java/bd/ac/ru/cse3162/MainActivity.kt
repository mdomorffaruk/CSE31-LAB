package bd.ac.ru.cse3162

import android.Manifest
import android.content.pm.PackageManager
import android.location.Geocoder
import android.location.Location
import android.os.Bundle
import android.os.Looper
import android.util.Log
import android.widget.Button
import android.widget.TextView
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import androidx.core.app.ActivityCompat
import bd.ac.ru.cse3162.api.WeatherBitRepository
import bd.ac.ru.cse3162.api.models.CityForecast
import com.google.android.gms.location.*
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response
import java.time.LocalDateTime
import java.util.*
import java.util.concurrent.TimeUnit

class MainActivity : AppCompatActivity() {

    private lateinit var fusedLocationClient: FusedLocationProviderClient
    private lateinit var locationRequest: LocationRequest
    private lateinit var locationCallback: LocationCallback
    private var currentLocation: Location? = null
    private val weatherApi: WeatherBitRepository = WeatherBitRepository()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        fusedLocationClient = LocationServices.getFusedLocationProviderClient(this)

        initViews()
    }

    private fun initViews() {

        locationRequest = LocationRequest.create().apply {
            interval = TimeUnit.SECONDS.toMillis(20)
            fastestInterval = TimeUnit.SECONDS.toMillis(10)
            priority = LocationRequest.PRIORITY_HIGH_ACCURACY
            maxWaitTime = TimeUnit.MINUTES.toMillis(2)
        }

        locationCallback = object : LocationCallback() {
            override fun onLocationResult(locationResult: LocationResult) {
                super.onLocationResult(locationResult)
                currentLocation = locationResult.lastLocation
                handleLocationChange()
            }
        }

        val locationBtn: Button = findViewById(R.id.bSearch)

        locationBtn.setOnClickListener {
            onLocationClick()
        }
    }

    private fun handleLocationChange() {
        if (currentLocation != null) {
            getWeatherForecast(
                currentLocation!!.latitude.toString(),
                currentLocation!!.longitude.toString()
            )
        }
    }

    private fun getWeatherForecast(longitude: String, latitude: String) {
        weatherApi.getWeatherData(longitude, latitude).enqueue(object :
            Callback<CityForecast> {
            override fun onResponse(
                call: Call<CityForecast>,
                response: Response<CityForecast>
            ) {
                if (response.isSuccessful) {
                    val responseData = response.body()!!
                    val dateTV: TextView = findViewById(R.id.currentDateTV)
                    val longitudeTV: TextView = findViewById(R.id.longitudeTV)
                    val latitudeTV: TextView = findViewById(R.id.latitudeTV)
                    val degreesTV: TextView = findViewById(R.id.degreesTV)
                    val fahrenheitTV: TextView = findViewById(R.id.fahrenheitTV)
                    val huminityTV: TextView = findViewById(R.id.huminityTV)
                    val windTV: TextView = findViewById(R.id.windTV)
                    val mbarTV: TextView = findViewById(R.id.mbarTV)
                    val statusTV: TextView = findViewById(R.id.statusTV)

                    dateTV.text = LocalDateTime.now().toString()
                    longitudeTV.text = "Longitude: $longitude"
                    latitudeTV.text = "Latitude: $latitude"
                    degreesTV.text =
                        responseData.forecastData[0].averageTemperature.toString() + "° C"
                    fahrenheitTV.text =
                        convertCelsiusToFahrenheit(responseData.forecastData[0].averageTemperature).toString() + "° F"
                    huminityTV.text = responseData.forecastData[0].relativeHumidity.toString() + "%"
                    windTV.text = responseData.forecastData[0].windSpeed.toString() + " km/h"
                    mbarTV.text = responseData.forecastData[0].averagePressure + " mBar"
                    statusTV.text = responseData.forecastData[0].weatherInfo.description
                }
            }

            override fun onFailure(call: Call<CityForecast>, t: Throwable) {
                Log.e("Error", "Network call failed")
            }
        })
    }

    private fun convertCelsiusToFahrenheit(celsius: Double): Double {
        return ((celsius * 9) / 5) + 32;
    }

    private fun onLocationClick() {
        if (ActivityCompat.checkSelfPermission(
                this,
                Manifest.permission.ACCESS_FINE_LOCATION
            ) != PackageManager.PERMISSION_GRANTED && ActivityCompat.checkSelfPermission(
                this,
                Manifest.permission.ACCESS_COARSE_LOCATION
            ) != PackageManager.PERMISSION_GRANTED
        ) {
            ActivityCompat.requestPermissions(
                this,
                arrayOf(
                    Manifest.permission.ACCESS_FINE_LOCATION,
                    Manifest.permission.ACCESS_COARSE_LOCATION
                ),
                1
            )
        }

        fusedLocationClient.requestLocationUpdates(
            locationRequest, locationCallback,
            Looper.myLooper()!!
        )
    }
}