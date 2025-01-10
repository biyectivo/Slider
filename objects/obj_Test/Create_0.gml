// Create the panel in the middle of the screen
var _panel = new UIPanel("TestPanel", 0, 0, 500, 400, grey_panel, UI_RELATIVE_TO.MIDDLE_CENTER);

// Horizontal slider

// Create a horizontal slider that ranges from 0 to 50, with grey_sliderHorizontal as base (rail) sprite and grey_sliderDown as the slider handle
var _slider = new UISlider("TestSlider", 20, 60, 400, grey_sliderHorizontal, red_sliderDown, 0, 0, 50, UI_ORIENTATION.HORIZONTAL, UI_RELATIVE_TO.TOP_LEFT);
// Set font color
_slider.setTextFormat("[c_black]");
// Change the handle sprite position so the arrow does not "start" at the line, but above it
_slider.setHandleOffset({x: 0, y: -20});
// Set the minimum and maximum change units when dragging the handle and when clicking on the rail
_slider.setDragChange(10).setClickChange(2);
// Add it to the panel
_panel.add(_slider);

// Vertical slider

// Create another slider, this time vertical, ranging from -3 to 3 in 0.5 drag increments and 0.1 click increments
var _slider = new UISlider("Test2Slider", 0, 20, 150, grey_sliderVertical, blue_sliderRight, 0, -3, 3, UI_ORIENTATION.VERTICAL, UI_RELATIVE_TO.MIDDLE_CENTER);
_slider.setTextFormat("[c_black]").setHandleOffset({x: -20, y: 0}).setDragChange(0.5).setClickChange(0.1);
_panel.add(_slider);