#!/bin/bash

reset

proj_home=/home/user/project

in_dir=$proj_home/in-js
out_dir=$proj_home/out-js

# Presets doesn't working!
# --options-preset <string> [default, low-obfuscation, medium-obfuscation, high-obfuscation]

function compile {
	javascript-obfuscator \
		--target browser-no-eval \
		--compact false \
		--log false \
		--disable-console-output false \
		--config $proj_home/config/optimal.json \
		$in_dir --output $out_dir
}

rm -rf $out_dir
mkdir -p $out_dir

compile
