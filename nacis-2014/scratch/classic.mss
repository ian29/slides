  @water: lighten(#fff * 1.7, 3);

  Map {
    background-color: @water;
  }

  #countries {
    ::outline3 {
      line-color: @water * .98;
      line-width: 20;
      line-join: round;
      image-filters:agg-stack-blur(6,6);
    }
    ::outline2 {
      line-color: @water * .9;
      line-width: 7;
      line-join: round;
      image-filters:agg-stack-blur(2,2);
    }
    ::outline {
      line-color: @water * .5;
      line-width: 2;
      line-join: round;
    
    }
    polygon-fill: #fff;

  }

  #10murbanareas {
    line-width:0;
    polygon-opacity:1;
    polygon-fill: #f07;// #fff0a0; 
  }


  #10mroads {
    line-width:.1;
    line-color:#168;
  }

  #10mpopulatedplaces[SCALERANK=1][zoom>2]{
    [FEATURECLA='Admin-1 capital'] {
      marker-fill: #fff;
      marker-line-color:#000;
    }
    text-name: [NAME];
    text-face-name: "Roboto Bold";
    text-size: 17;
    text-min-distance:40;
    text-dx: 5; text-dy:-5;
    marker-width:5;
    marker-fill: #000;
  }

  #10mpopulatedplaces[SCALERANK=2][zoom>6]{
    [FEATURECLA='Admin-1 capital'] {
      text-face-name: "Roboto Bold";

    }
    text-name: [NAME];
    text-face-name: "Roboto Regular";
    text-size: 13;
    text-min-distance:40;
    text-dx: 4; text-dy:-3;
    text-placements: "NE,SE,S,N"; 
    marker-width:5;
    marker-fill: #000;
  }

  #10mpopulatedplaces[SCALERANK>=3][zoom>7]{
    [FEATURECLA='Admin-1 capital'] {
      text-face-name: "Roboto Regular";
      marker-fill: #fff;
      marker-line-color:#000;
    }
    text-name: [NAME];
    text-face-name: "Roboto Regular";
    text-size: 11;
    text-min-distance:40;
    text-dx: 4; text-dy:-3;
    marker-width:5;
    marker-fill: #000;
  }
