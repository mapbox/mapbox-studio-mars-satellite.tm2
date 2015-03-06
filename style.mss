Map {
  background-color: #F5EAE0;
}

// Satellite layer
#mapbox_mars_satellite {
  raster-scaling: lanczos;
  raster-opacity: 1;
  raster-comp-op: multiply;
}

// Succesful landing sites
#place::landing[zoom>=2][type="landing"] {
  ::icon {
    marker-file: url("img/maki/rocket-24.svg");
    marker-opacity: 0.85;
  }
  text-name: "[name]+' landing site'";
  text-face-name: 'Open Sans Semibold';
  text-placement: point;
  text-transform: uppercase;
  text-size: 13;
  text-fill: #ccc;
  text-dy: 16;
  text-halo-fill: #333;
  text-halo-opacity: 0.8;
  text-halo-radius: 1.5;
  text-halo-rasterizer: fast;
  text-wrap-width: 70;
  [zoom>=6] { text-size: 15; }
  [zoom<=3][name="Viking 1"] {
    text-dy: -16;
  }
  [zoom<=3][name="MER Spirit"] {
    text-dx: -16;
    text-dy: 0;
  }
  [zoom<=2][name="Curiosity"] {
    text-dy: -16;
  }
}

// Surface features
#place::features[zoom>=3] {
  [name!="Olympus Rupes"]
  [type!="landing"]
  [type!="landing_failed"] {
    text-name: "[name]";
    text-face-name: 'Open Sans Italic';
    text-placement: point;
    text-size: 13;
    text-fill: #fff;
    text-halo-fill: #333;
    text-halo-opacity: 0.7;
    text-halo-radius: 1.5;
    text-halo-rasterizer: fast;
    text-wrap-width: 70;
    [size>=2000] {
      text-character-spacing: 2;
    }
    [zoom>=6] { text-size: 15; }
    [size<2000] {
      text-size: 11;
      text-character-spacing: 1;
      [zoom>=6] { 
        text-size: 13;
        [type="crater"] {
          text-name: "[name]+' Crater'";
          text-face-name: 'Open Sans Regular';
          text-size: 12;
          text-character-spacing: 0;
          text-halo-radius: 1;
        }
      }
    }
  }
}
