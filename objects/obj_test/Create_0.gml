var _path = get_edf_path();

var _file = file_find_first(_path + "\\*", 0);

while(_file != "") {
	show_debug_message(_file);
	_file = file_find_next();
}