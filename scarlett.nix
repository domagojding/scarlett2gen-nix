# scarlett-gen2
{
  lib, 
  stdenv,
  fetchFromGitHub,
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
}
