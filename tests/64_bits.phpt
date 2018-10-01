--TEST--
Check if djbx33a produces reasonable values (64bits)
--SKIPIF--
<?php
if (PHP_INT_SIZE !== 8) {
    echo 'skip';
}
?>
--FILE--
<?php
foreach(array('s', 'string', 'another string', 'a slightly longer string', 's') as $str) {
    printf("%u\n", djbx33a($str));
}
?>
--EXPECT--
9223372036854953496
9223378990886268924
18072133653609717261
12939330479035430356
9223372036854953496
