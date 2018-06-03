var allelements = layer_get_all_elements("instances");
for (var i = 0; i < array_length_1d(allelements); i++;)
   {
		object_set_persistent(allelements[i], true);
   }
room_goto("room0");