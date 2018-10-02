#ifdef HAVE_CONFIG_H
#include "config.h"
#endif

#include "php.h"
#include "ext/standard/info.h"
#include "php_djbx33a.h"

PHP_FUNCTION(djbx33a)
{
	zend_string *input;

	ZEND_PARSE_PARAMETERS_START(1, 1)
		Z_PARAM_STR(input)
	ZEND_PARSE_PARAMETERS_END();

	RETURN_LONG(ZSTR_HASH(input));
}

PHP_MINFO_FUNCTION(djbx33a)
{
	php_info_print_table_start();
	php_info_print_table_header(2, "djbx33a support", "enabled");
	php_info_print_table_end();
}

ZEND_BEGIN_ARG_INFO(arginfo_djbx33a, 0)
	ZEND_ARG_INFO(0, input)
ZEND_END_ARG_INFO()

static const zend_function_entry djbx33a_functions[] = {
	PHP_FE(djbx33a, arginfo_djbx33a)
	PHP_FE_END
};

zend_module_entry djbx33a_module_entry = {
	STANDARD_MODULE_HEADER,
	"djbx33a",
	djbx33a_functions,
	NULL,
	NULL,
	NULL,
	NULL,
	PHP_MINFO(djbx33a),
	PHP_DJBX33A_VERSION,
	STANDARD_MODULE_PROPERTIES
};

#ifdef COMPILE_DL_DJBX33A
ZEND_GET_MODULE(djbx33a)
#endif
