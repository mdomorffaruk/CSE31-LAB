package bd.ac.ru.cse3162.api

import bd.ac.ru.cse3162.api.models.CityForecast
import retrofit2.Call
import retrofit2.http.GET
import retrofit2.http.Query

interface WeatherBitService {
    @GET("/v2.0/current")
    fun getWeatherData(
        @Query("key") key: String,
        @Query("lat") lat: String,
        @Query("lon") lon: String
    ): Call<CityForecast>

}