# pkg-config is currently used for Linux. But this is still useful for Mac & iOS.

FIND_PATH(WEBKIT_INCLUDE_DIR webkit/webkit.h
	PATH_SUFFIXES 
#		webkitgtk-3.0
		webkitgtk-1.0
)

FIND_LIBRARY(WEBKIT_LIBRARY 
	NAMES 
		WebKit
#		webkitgtk-3.0
		webkitgtk-1.0
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(
	WEBKIT DEFAULT_MSG
	WEBKIT_LIBRARY WEBKIT_INCLUDE_DIR
)

IF(WEBKIT_FOUND)
	SET(WEBKIT_INCLUDE_DIRS ${WEBKIT_INCLUDE_DIR})
	SET(WEBKIT_LIBRARIES ${WEBKIT_LIBRARY})
ELSE(WEBKIT_FOUND)
	SET(WEBKIT_INCLUDE_DIRS "")
	SET(WEBKIT_LIBRARIES "")
ENDIF(WEBKIT_FOUND)

