# scarlett-gen2
{
  lib, 
  stdenv,
  fetchFromGitHub,
  kernel,
  kmod
}:

stdenv.mkDerivation {
  pname = "scarlett-gen2";
  version = "6.8-v1.0";

  src = fetchFromGitHub {
    owner = "geoffreybennett";
    repo = "scarlett-gen2";
    rev = "v1.0";
    sha256 = "0208pxyr2rhcb4lz191m3zj482pmlkamcqbjx4adlazv0pg8ivyx";
  };

  hardeningDisable = [ "pic" "format" ];
  nativeBuildInputs = kernel.moduleBuildDependencies;

  makeFlags = [
    "KVERSION=${kernel.modDirVersion}"
    "KDIR=${kernel.dev}/lib/modules/${kernel.modDirVersion}/build"
    "MODULEDIR=$(out)"
  ];

  meta = with lib; {
    description = "Linux kernel driver for Focusrite Scarlett 2nd Generation interfaces";
    homepage = "https://github.com/geoffreybennett/scarlett-gen2";
    license = licenses.gpl2Only;
    maintainers = [ maintainers.yourname ];
    platforms = platforms.linux;
  };

}
