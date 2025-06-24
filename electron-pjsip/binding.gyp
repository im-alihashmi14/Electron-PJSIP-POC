{
  "targets": [
    {
      "target_name": "pjsip",
      "sources": [ "src/pjsip_binding.cc" ],
      "include_dirs": [
        "<!@(node -p \"require('node-addon-api').include\")",
        "../pjproject-2.15.1/pjlib/include",
        "../pjproject-2.15.1/pjlib-util/include",
        "../pjproject-2.15.1/pjmedia/include",
        "../pjproject-2.15.1/pjsip/include",
        "../pjproject-2.15.1/pjnath/include"
      ],
      "dependencies": [
        "<!(node -p \"require('node-addon-api').gyp\")"
      ],
      "cflags!": [ "-fno-exceptions" ],
      "cflags_cc!": [ "-fno-exceptions" ],
      "defines": [ 
        "NAPI_CPP_EXCEPTIONS",
        "PJ_IS_LITTLE_ENDIAN=1",
        "PJ_IS_BIG_ENDIAN=0"
      ],
      "library_dirs": [
        "/Users/mac/Data/Projects/PJSIP/pjproject-2.15.1/pjsip/lib",
        "/Users/mac/Data/Projects/PJSIP/pjproject-2.15.1/pjmedia/lib",
        "/Users/mac/Data/Projects/PJSIP/pjproject-2.15.1/pjnath/lib",
        "/Users/mac/Data/Projects/PJSIP/pjproject-2.15.1/pjlib-util/lib",
        "/Users/mac/Data/Projects/PJSIP/pjproject-2.15.1/pjlib/lib",
        "/Users/mac/Data/Projects/PJSIP/pjproject-2.15.1/third_party/lib"
      ],
      "libraries": [
        "-lspeex",
        "-lsrtp",
        "-lpjsua2",
        "-lpjsua",
        "-lpjsip-ua",
        "-lpjsip-simple",
        "-lpjsip",
        "-lpjmedia-codec",
        "-lpjmedia-videodev",
        "-lpjmedia-audiodev",
        "-lpjmedia",
        "-lpjsdp",
        "-lpjnath",
        "-lpjlib-util",
        "-lpj",
        "-framework CoreAudio",
        "-framework CoreServices",
        "-framework AudioUnit",
        "-framework AudioToolbox",
        "-framework Foundation",
        "-framework AppKit"
      ],
      "xcode_settings": {
        "GCC_ENABLE_CPP_EXCEPTIONS": "YES",
        "CLANG_CXX_LIBRARY": "libc++",
        "MACOSX_DEPLOYMENT_TARGET": "15.0"
      }
    }
  ]
}