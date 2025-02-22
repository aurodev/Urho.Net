package TEMPLATE_UUID

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        launch("")
    }

    private fun launch(argument: String?) {
        if (argument != null) {
            val intent = Intent(this, UrhoMainActivity::class.java)
            intent.putExtra(UrhoMainActivity.argument,argument)
            startActivity(intent)
            finish()
        }
    }
}
