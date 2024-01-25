package bd.ac.ru.cse3162.api

class WeatherBitRepository {

    private val weatherApi: WeatherBitService = WeatherBitApi.createApi()
    private val apiKey: String = "17eb616461f74ff493008434e7c78e84"

    fun getWeatherData(lat: String, lon: String) =
        weatherApi.getWeatherData(apiKey, lat, lon)
}