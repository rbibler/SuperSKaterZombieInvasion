/// This is a script that helps an object spawn an effect object
/// @arg effect

var effect = argument0;

instance_create_layer(x, y, EFFECTS_LAYER, effect);