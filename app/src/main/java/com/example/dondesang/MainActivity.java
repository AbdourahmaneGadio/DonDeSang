package com.example.dondesang;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Spinner;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    Spinner zoneSang;
    ArrayAdapter<CharSequence> adapteur;
    TextView texteCompatible;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        zoneSang = findViewById(R.id.zoneSang);

        adapteur = ArrayAdapter.createFromResource(this,
                R.array.groupesSanguins,
                android.R.layout.simple_spinner_item);

        adapteur.setDropDownViewResource
                (androidx.constraintlayout.widget.R.layout.support_simple_spinner_dropdown_item);

        texteCompatible = findViewById(R.id.texteCompatible);

        zoneSang.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public boolean onTouch(View view, MotionEvent motionEvent) {
                zoneSang.setAdapter(adapteur);
                return false;
            }
        });

        zoneSang.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {
            @Override
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long l) {

                    if(zoneSang.getSelectedItem().toString().equals("A+"))
                        texteCompatible.setText("Vous pouvez donner votre sang aux A+ et aux AB+\n\n" +
                                "Vous pouvez reçevoir du sang de la part des A+, A-, O+ et O-");

                    if(zoneSang.getSelectedItem().toString().equals("A-"))
                        texteCompatible.setText("Vous pouvez donner votre sang aux A+, A-, AB+, AB-\n\n" +
                                "Vous pouvez reçevoir du sang de la part des A- et O-");

                    if(zoneSang.getSelectedItem().toString().equals("AB+"))
                        texteCompatible.setText("Vous pouvez donner qu'aux AB+...\n\n" +
                                "Mais vous pouvez reçevoir du sang de tout le monde !\n" +
                                "Youpi !!!");

                    if(zoneSang.getSelectedItem().toString().equals("AB-"))
                        texteCompatible.setText("Vous pouvez donner votre sang aux AB+ et aux AB-\n\n" +
                                "Vous pouvez reçevoir du sang de la part des A-, AB-, B- et O- ");

                    if(zoneSang.getSelectedItem().toString().equals("B+"))
                        texteCompatible.setText("Vous pouvez donner votre sang aux B+ et aux AB+\n\n" +
                                "Vous pouvez reçevoir du sang de la part des B+, B-, O+ et O-");

                    if(zoneSang.getSelectedItem().toString().equals("B-"))
                        texteCompatible.setText("Vous pouvez donner votre sang aux AB+, AB-, B+ et aux B-\n\n" +
                                "Vous pouvez reçevoir du sang de la part des B- et O-");

                    if(zoneSang.getSelectedItem().toString().equals("O+"))
                        texteCompatible.setText("Vous pouvez donner votre sang aux AB+, A+, B+ et O+\n\n" +
                                "Vous pouvez reçevoir du sang de la part des O+ et O-");

                    if(zoneSang.getSelectedItem().toString().equals("O-"))
                        texteCompatible.setText("Incroyable ! Vous êtes un donneur universel !\n" +
                                "Vous pouvez donner votre sang à tout le monde !\n\n" +
                                "Mais vous ne pouvez reçevoir que du sang O-...");

            }

            @Override
            public void onNothingSelected(AdapterView<?> adapterView) {
            }
        });

    }

}