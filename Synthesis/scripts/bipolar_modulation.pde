/**
* Processing script to generate an animation of a slider showing bipolar modulation. 
* Requires https://processing.org
*/

// Set up a basic canvas
int canvasX = 200;
int canvasY = 400;
int midCanvas = canvasY / 2;
int mult = 15;
int frameIndex = 0;
boolean export = false;
color l = color(255, 255, 255);

void setup() {
    size(200, 400);
    background(0);
    smooth();
    noStroke();
    
    //Optional; add consola.ttf to the folder where this script resides.
    //textFont( createFont("consola.ttf", 12));
}

void draw() {
    // Create the background
    pushMatrix();
    translate(20, 0);
    background(0);
    drawZeroLine();
    drawScaleUp();
    drawScaleDown();
    drawGutter();
    
    // Animate the slider
    float phase = (2 * PI / (canvasY - 2 * mult));
    float y = ((canvasY - 6.5 * mult) / 2) * sin(phase * frameCount);
    drawSlider(y);
    
    if (export) {
        if (frameCount % 3 == 0) {
            String fileName = nf(frameIndex, 3);
            saveFrame(fileName + ".png");
            frameIndex++;
        }
        if (frameCount == 369) {
            exit();
        }
    }   
    popMatrix();
}

void drawZeroLine() {
    pushMatrix();
    stroke(255);
    translate(0, 200);
    line(0, 0, canvasX - 3 * mult, 0);
    noStroke();
    popMatrix();
}

// Draw a positive scale with 10 grid lines in green.
void drawScaleUp() {
    
    pushMatrix();
    translate(0, 200 - mult);
    stroke(0, 128, 0);
    
    for (int x = 0; x < 10; x++) {
        float offset = -1 * mult * x;
        
        line(0, offset, 100, offset);   
        text("+" + (x + 1), 110, offset + 5);
    }
    
    noStroke();
    popMatrix();
}

// Draw a negative scale with 10 grid lines in red
void drawScaleDown() {
    
    pushMatrix();
    translate(0, 200 + mult);
    stroke(128, 0, 0);
    
    for (int x = 0; x < 10; x++) {
        float offset = 1 * mult * x;
        line(0, offset, 100, offset);   
        text( -1 * (x + 1), 110, offset + 5);
    }
    noStroke();
    popMatrix();
}

// Create a simple slider
void drawSlider(float y) {
    stroke(255);   
    fill(40);
    rect(10,190 - y, 80, 20);
    fill(160);
    noStroke();
    rect(13,198 - y, 76, 4);
    noStroke();
}

void drawGutter() {
    pushMatrix();
    fill(40);
    rect(45, 3 * mult, 10, canvasY - 6 * mult);
    popMatrix();
}