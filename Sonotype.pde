import processing.sound.*;

//Setting up global variables assigned to each class that I am making use of from the Processign Sound Library
AudioIn Input;
Amplitude analyzer;
FFT fft;

//Defining number, scalinmg factors and other aesthetic factors of spectral bands for FFT analysis visualiser
int bands = 512;
float smoothingFactor = 0.2;
float[] sum = new float[bands];
int scale = 10;
float barWidth;

void setup(){
  size(640, 360);
  background(255);
  
  //Create an audio input stream
  Input = new AudioIn(this, 0);
  Input.start();
  
  //Create an amplitude analyser
  analyzer = new Amplitude(this);
  //Initiate the analyser on the audio input stream
  analyzer.input(Input);
  
  //Setting up the FFT visualiser 
  barWidth = width/float(bands);
  
  //Creating the FFT analyser
  fft = new FFT(this, bands);
  //Initiate the analyser to the audio input stream
  fft.input(Input);
}

void draw(){
  
  //Setting up the canvas
  background (255);
  
  //Setting up colour and stroke for the FFT analysis visualisation
  fill(0);
  noStroke();
  
  //Invoke the FFT analyser
  fft.analyze();
  
  for (int i = 0; i < bands; i++) {
    // Smooth the FFT spectrum data by smoothing factor
    sum[i] += (fft.spectrum[i] - sum[i]) * smoothingFactor;
    rect(i*barWidth, height, barWidth, -sum[i]*height*scale);
  }
  println(sum);
  
  //Create a variable that stores the value of amplitude from analyser
  float vol = analyzer.analyze();
  //Printing the value of amplitude to console
  println(vol);
  
  //Setting up colour and stroke for amplitude visualisation
  fill(200);
  
  //Drawing a scalable graphic that responds to the change in amplitudinal value
    ellipse (width/2, height/2, 10+vol*200, 10+vol*200);
  
  saveFrame("character-#####.png");
}
