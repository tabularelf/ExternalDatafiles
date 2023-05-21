/* feather ignore all */
/// @ignore
function get_edf_path() {
	static _assetPath = undefined;
	if (_assetPath == undefined) {
		if (GM_build_type == "run") && (file_exists(".edf")) {
			var _buff = buffer_load(".edf");
			var _path = buffer_read(_buff, buffer_text);
			buffer_delete(_buff);
			_assetPath = _path + "\\"; 
			var _file = file_text_open_write(_assetPath + "test.edf");
			file_text_close(_file);
			var _deleted = file_delete(_assetPath + "test.edf");
			if (!_deleted) {
				show_error("Please disable sandbox before using ExternalDatafiles!", true);
			}
		} else {
			_assetPath = program_directory;
		}
	}
	
	return _assetPath;
}