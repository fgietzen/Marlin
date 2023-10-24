{ pkgs ? import <nixpkgs> {} }:

with pkgs; mkShell rec {
	packages = [
		platformio
	];
	PROJECT_ROOT = builtins.getEnv "PWD";
	PLATFORMIO_CORE_DIR = "${PROJECT_ROOT}/.platformio";
}
