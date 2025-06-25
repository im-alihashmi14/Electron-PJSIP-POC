cmd_Release/obj.target/pjsip/src/pjsip_binding.o := c++ -o Release/obj.target/pjsip/src/pjsip_binding.o ../src/pjsip_binding.cc '-DNODE_GYP_MODULE_NAME=pjsip' '-DUSING_UV_SHARED=1' '-DUSING_V8_SHARED=1' '-DV8_DEPRECATION_WARNINGS=1' '-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS' '-D_GLIBCXX_USE_CXX11_ABI=1' '-DELECTRON_ENSURE_CONFIG_GYPI' '-D_DARWIN_USE_64_BIT_INODE=1' '-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=64' '-DUSING_ELECTRON_CONFIG_GYPI' '-DV8_COMPRESS_POINTERS' '-DV8_COMPRESS_POINTERS_IN_SHARED_CAGE' '-DV8_ENABLE_SANDBOX' '-DV8_31BIT_SMIS_ON_64BIT_ARCH' '-DOPENSSL_NO_PINSHARED' '-DOPENSSL_THREADS' '-DOPENSSL_NO_ASM' '-DNAPI_CPP_EXCEPTIONS' '-DPJ_IS_LITTLE_ENDIAN=1' '-DPJ_IS_BIG_ENDIAN=0' '-DBUILDING_NODE_EXTENSION' -I/Users/mac/.electron-gyp/28.3.3/include/node -I/Users/mac/.electron-gyp/28.3.3/src -I/Users/mac/.electron-gyp/28.3.3/deps/openssl/config -I/Users/mac/.electron-gyp/28.3.3/deps/openssl/openssl/include -I/Users/mac/.electron-gyp/28.3.3/deps/uv/include -I/Users/mac/.electron-gyp/28.3.3/deps/zlib -I/Users/mac/.electron-gyp/28.3.3/deps/v8/include -I/Users/mac/Data/Projects/PJSIP/electron-pjsip/node_modules/node-addon-api -I../../pjproject-2.15.1/pjlib/include -I../../pjproject-2.15.1/pjlib-util/include -I../../pjproject-2.15.1/pjmedia/include -I../../pjproject-2.15.1/pjsip/include -I../../pjproject-2.15.1/pjnath/include  -O3 -gdwarf-2 -mmacosx-version-min=15.0 -arch arm64 -Wall -Wendif-labels -W -Wno-unused-parameter -std=gnu++17 -stdlib=libc++ -fno-rtti -fno-strict-aliasing -MMD -MF ./Release/.deps/Release/obj.target/pjsip/src/pjsip_binding.o.d.raw   -c
Release/obj.target/pjsip/src/pjsip_binding.o: ../src/pjsip_binding.cc \
  /Users/mac/Data/Projects/PJSIP/electron-pjsip/node_modules/node-addon-api/napi.h \
  /Users/mac/.electron-gyp/28.3.3/include/node/node_api.h \
  /Users/mac/.electron-gyp/28.3.3/include/node/js_native_api.h \
  /Users/mac/.electron-gyp/28.3.3/include/node/js_native_api_types.h \
  /Users/mac/.electron-gyp/28.3.3/include/node/node_api_types.h \
  /Users/mac/Data/Projects/PJSIP/electron-pjsip/node_modules/node-addon-api/napi-inl.h \
  /Users/mac/Data/Projects/PJSIP/electron-pjsip/node_modules/node-addon-api/napi-inl.deprecated.h \
  ../../pjproject-2.15.1/pjsip/include/pjsua-lib/pjsua.h \
  ../../pjproject-2.15.1/pjsip/include/pjsip.h \
  ../../pjproject-2.15.1/pjsip/include/pjsip/sip_types.h \
  ../../pjproject-2.15.1/pjsip/include/pjsip/sip_config.h \
  ../../pjproject-2.15.1/pjlib/include/pj/types.h \
  ../../pjproject-2.15.1/pjlib/include/pj/config.h \
  ../../pjproject-2.15.1/pjlib/include/pj/compat/cc_clang.h \
  ../../pjproject-2.15.1/pjlib/include/pj/compat/os_darwinos.h \
  ../../pjproject-2.15.1/pjlib/include/pj/compat/size_t.h \
  ../../pjproject-2.15.1/pjlib/include/pj/config_site.h \
  ../../pjproject-2.15.1/pjlib/include/pj/limits.h \
  ../../pjproject-2.15.1/pjlib/include/pj/compat/limits.h \
  ../../pjproject-2.15.1/pjsip/include/pjsip/sip_errno.h \
  ../../pjproject-2.15.1/pjlib/include/pj/errno.h \
  ../../pjproject-2.15.1/pjlib/include/pj/compat/errno.h \
  ../../pjproject-2.15.1/pjsip/include/pjsip/sip_uri.h \
  ../../pjproject-2.15.1/pjlib/include/pj/assert.h \
  ../../pjproject-2.15.1/pjlib/include/pj/compat/assert.h \
  ../../pjproject-2.15.1/pjlib/include/pj/log.h \
  ../../pjproject-2.15.1/pjlib/include/pj/list.h \
  ../../pjproject-2.15.1/pjlib-util/include/pjlib-util/scanner.h \
  ../../pjproject-2.15.1/pjlib-util/include/pjlib-util/types.h \
  ../../pjproject-2.15.1/pjlib-util/include/pjlib-util/config.h \
  ../../pjproject-2.15.1/pjlib-util/include/pjlib-util/scanner_cis_bitwise.h \
  ../../pjproject-2.15.1/pjsip/include/pjsip/sip_tel_uri.h \
  ../../pjproject-2.15.1/pjsip/include/pjsip/sip_msg.h \
  ../../pjproject-2.15.1/pjsip/include/pjsip/sip_multipart.h \
  ../../pjproject-2.15.1/pjsip/include/pjsip/sip_parser.h \
  ../../pjproject-2.15.1/pjsip/include/pjsip/sip_event.h \
  ../../pjproject-2.15.1/pjlib/include/pj/timer.h \
  ../../pjproject-2.15.1/pjlib/include/pj/lock.h \
  ../../pjproject-2.15.1/pjsip/include/pjsip/sip_module.h \
  ../../pjproject-2.15.1/pjsip/include/pjsip/sip_endpoint.h \
  ../../pjproject-2.15.1/pjsip/include/pjsip/sip_transport.h \
  ../../pjproject-2.15.1/pjsip/include/pjsip/sip_resolve.h \
  ../../pjproject-2.15.1/pjlib-util/include/pjlib-util/resolver.h \
  ../../pjproject-2.15.1/pjlib-util/include/pjlib-util/dns.h \
  ../../pjproject-2.15.1/pjlib/include/pj/sock.h \
  ../../pjproject-2.15.1/pjlib/include/pj/compat/socket.h \
  ../../pjproject-2.15.1/pjlib/include/pj/ioqueue.h \
  ../../pjproject-2.15.1/pjsip/include/pjsip/sip_util.h \
  ../../pjproject-2.15.1/pjsip/include/pjsip/sip_transport_udp.h \
  ../../pjproject-2.15.1/pjlib/include/pj/sock_qos.h \
  ../../pjproject-2.15.1/pjsip/include/pjsip/sip_transport_loop.h \
  ../../pjproject-2.15.1/pjsip/include/pjsip/sip_transport_tcp.h \
  ../../pjproject-2.15.1/pjsip/include/pjsip/sip_transport_tls.h \
  ../../pjproject-2.15.1/pjlib/include/pj/pool.h \
  ../../pjproject-2.15.1/pjlib/include/pj/ssl_sock.h \
  ../../pjproject-2.15.1/pjlib/include/pj/string.h \
  ../../pjproject-2.15.1/pjlib/include/pj/compat/string.h \
  ../../pjproject-2.15.1/pjsip/include/pjsip/sip_auth.h \
  ../../pjproject-2.15.1/pjsip/include/pjsip/sip_auth_msg.h \
  ../../pjproject-2.15.1/pjsip/include/pjsip/sip_auth_aka.h \
  ../../pjproject-2.15.1/pjsip/include/pjsip/sip_auth_parser.h \
  ../../pjproject-2.15.1/pjsip/include/pjsip/sip_transaction.h \
  ../../pjproject-2.15.1/pjsip/include/pjsip/sip_ua_layer.h \
  ../../pjproject-2.15.1/pjsip/include/pjsip/sip_dialog.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/alaw_ulaw.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/types.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/config.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/avi_stream.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/port.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/clock.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/event.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/audiodev.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia-audiodev/config.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia-audiodev/errno.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/format.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/frame.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/rtcp_fb.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/rtcp.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/rtcp_xr.h \
  ../../pjproject-2.15.1/pjlib/include/pj/math.h \
  ../../pjproject-2.15.1/pjlib/include/pj/compat/high_precision.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/rtp.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/sdp.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/signatures.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/videodev.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia-videodev/config.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia-videodev/errno.h \
  ../../pjproject-2.15.1/pjlib/include/pj/os.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/bidirectional.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/circbuf.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/codec.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/conference.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/converter.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/delaybuf.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/echo.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/echo_port.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/endpoint.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/transport.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/errno.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia-audiodev/audiodev.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/g711.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia-codec/types.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia-codec/config.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/jbuf.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/master_port.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/mem_port.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/null_port.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/plc.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/resample.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/sdp_neg.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/silencedet.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/sound.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/sound_port.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/splitcomb.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/stereo.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/stream.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/vid_codec.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/stream_common.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/tonegen.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/transport_adapter_sample.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/transport_ice.h \
  ../../pjproject-2.15.1/pjnath/include/pjnath/ice_strans.h \
  ../../pjproject-2.15.1/pjnath/include/pjnath/ice_session.h \
  ../../pjproject-2.15.1/pjnath/include/pjnath/types.h \
  ../../pjproject-2.15.1/pjnath/include/pjnath/config.h \
  ../../pjproject-2.15.1/pjnath/include/pjnath/stun_session.h \
  ../../pjproject-2.15.1/pjnath/include/pjnath/stun_msg.h \
  ../../pjproject-2.15.1/pjnath/include/pjnath/stun_auth.h \
  ../../pjproject-2.15.1/pjnath/include/pjnath/stun_config.h \
  ../../pjproject-2.15.1/pjnath/include/pjnath/stun_transaction.h \
  ../../pjproject-2.15.1/pjnath/include/pjnath/errno.h \
  ../../pjproject-2.15.1/pjnath/include/pjnath/stun_sock.h \
  ../../pjproject-2.15.1/pjnath/include/pjnath/turn_sock.h \
  ../../pjproject-2.15.1/pjnath/include/pjnath/turn_session.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/transport_loop.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/transport_srtp.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/transport_udp.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/vid_conf.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/vid_port.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia-videodev/videodev.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/vid_stream.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/wav_playlist.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/wav_port.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/wave.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia/wsola.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia-codec.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia-codec/and_aud_mediacodec.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia-codec/and_vid_mediacodec.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia-codec/audio_codecs.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia-codec/passthrough.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia-codec/bcg729.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia-codec/ffmpeg_vid_codecs.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia-codec/g722.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia-codec/g7221.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia-codec/gsm.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia-codec/ilbc.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia-codec/ipp_codecs.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia-codec/l16.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia-codec/lyra.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia-codec/opencore_amr.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia-codec/openh264.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia-codec/opus.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia-codec/silk.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia-codec/speex.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia-codec/vid_toolbox.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia-codec/vpx.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia_videodev.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia-videodev/videodev_imp.h \
  ../../pjproject-2.15.1/pjmedia/include/pjmedia-videodev/avi_dev.h \
  ../../pjproject-2.15.1/pjsip/include/pjsip_ua.h \
  ../../pjproject-2.15.1/pjsip/include/pjsip-ua/sip_inv.h \
  ../../pjproject-2.15.1/pjsip/include/pjsip-ua/sip_regc.h \
  ../../pjproject-2.15.1/pjsip/include/pjsip-ua/sip_replaces.h \
  ../../pjproject-2.15.1/pjsip/include/pjsip-ua/sip_xfer.h \
  ../../pjproject-2.15.1/pjsip/include/pjsip-simple/evsub.h \
  ../../pjproject-2.15.1/pjsip/include/pjsip-simple/types.h \
  ../../pjproject-2.15.1/pjsip/include/pjsip-ua/sip_100rel.h \
  ../../pjproject-2.15.1/pjsip/include/pjsip-ua/sip_timer.h \
  ../../pjproject-2.15.1/pjsip/include/pjsip_simple.h \
  ../../pjproject-2.15.1/pjsip/include/pjsip-simple/dlg_event.h \
  ../../pjproject-2.15.1/pjsip/include/pjsip-simple/dialog_info.h \
  ../../pjproject-2.15.1/pjlib-util/include/pjlib-util/xml.h \
  ../../pjproject-2.15.1/pjsip/include/pjsip-simple/evsub_msg.h \
  ../../pjproject-2.15.1/pjsip/include/pjsip-simple/iscomposing.h \
  ../../pjproject-2.15.1/pjsip/include/pjsip-simple/mwi.h \
  ../../pjproject-2.15.1/pjsip/include/pjsip-simple/presence.h \
  ../../pjproject-2.15.1/pjsip/include/pjsip-simple/pidf.h \
  ../../pjproject-2.15.1/pjsip/include/pjsip-simple/xpidf.h \
  ../../pjproject-2.15.1/pjsip/include/pjsip-simple/rpid.h \
  ../../pjproject-2.15.1/pjsip/include/pjsip-simple/publish.h \
  ../../pjproject-2.15.1/pjnath/include/pjnath.h \
  ../../pjproject-2.15.1/pjnath/include/pjnath/nat_detect.h \
  ../../pjproject-2.15.1/pjnath/include/pjnath/upnp.h \
  ../../pjproject-2.15.1/pjlib-util/include/pjlib-util.h \
  ../../pjproject-2.15.1/pjlib-util/include/pjlib-util/errno.h \
  ../../pjproject-2.15.1/pjlib-util/include/pjlib-util/getopt.h \
  ../../pjproject-2.15.1/pjlib-util/include/pjlib-util/base64.h \
  ../../pjproject-2.15.1/pjlib-util/include/pjlib-util/crc32.h \
  ../../pjproject-2.15.1/pjlib-util/include/pjlib-util/hmac_md5.h \
  ../../pjproject-2.15.1/pjlib-util/include/pjlib-util/md5.h \
  ../../pjproject-2.15.1/pjlib-util/include/pjlib-util/hmac_sha1.h \
  ../../pjproject-2.15.1/pjlib-util/include/pjlib-util/sha1.h \
  ../../pjproject-2.15.1/pjlib-util/include/pjlib-util/srv_resolver.h \
  ../../pjproject-2.15.1/pjlib-util/include/pjlib-util/dns_server.h \
  ../../pjproject-2.15.1/pjlib-util/include/pjlib-util/string.h \
  ../../pjproject-2.15.1/pjlib-util/include/pjlib-util/json.h \
  ../../pjproject-2.15.1/pjlib-util/include/pjlib-util/stun_simple.h \
  ../../pjproject-2.15.1/pjlib-util/include/pjlib-util/pcap.h \
  ../../pjproject-2.15.1/pjlib-util/include/pjlib-util/http_client.h \
  ../../pjproject-2.15.1/pjlib/include/pj/activesock.h \
  ../../pjproject-2.15.1/pjlib-util/include/pjlib-util/cli.h \
  ../../pjproject-2.15.1/pjlib-util/include/pjlib-util/cli_console.h \
  ../../pjproject-2.15.1/pjlib-util/include/pjlib-util/cli_imp.h \
  ../../pjproject-2.15.1/pjlib-util/include/pjlib-util/cli_telnet.h \
  ../../pjproject-2.15.1/pjlib/include/pjlib.h \
  ../../pjproject-2.15.1/pjlib/include/pj/addr_resolv.h \
  ../../pjproject-2.15.1/pjlib/include/pj/argparse.h \
  ../../pjproject-2.15.1/pjlib/include/pj/ctype.h \
  ../../pjproject-2.15.1/pjlib/include/pj/compat/ctype.h \
  ../../pjproject-2.15.1/pjlib/include/pj/array.h \
  ../../pjproject-2.15.1/pjlib/include/pj/atomic_queue.h \
  ../../pjproject-2.15.1/pjlib/include/pj/except.h \
  ../../pjproject-2.15.1/pjlib/include/pj/compat/setjmp.h \
  ../../pjproject-2.15.1/pjlib/include/pj/fifobuf.h \
  ../../pjproject-2.15.1/pjlib/include/pj/file_access.h \
  ../../pjproject-2.15.1/pjlib/include/pj/file_io.h \
  ../../pjproject-2.15.1/pjlib/include/pj/guid.h \
  ../../pjproject-2.15.1/pjlib/include/pj/hash.h \
  ../../pjproject-2.15.1/pjlib/include/pj/ip_helper.h \
  ../../pjproject-2.15.1/pjlib/include/pj/pool_buf.h \
  ../../pjproject-2.15.1/pjlib/include/pj/rand.h \
  ../../pjproject-2.15.1/pjlib/include/pj/rbtree.h \
  ../../pjproject-2.15.1/pjlib/include/pj/sock_select.h \
  ../../pjproject-2.15.1/pjlib/include/pj/unicode.h \
  ../../pjproject-2.15.1/pjlib/include/pj/unittest.h
../src/pjsip_binding.cc:
/Users/mac/Data/Projects/PJSIP/electron-pjsip/node_modules/node-addon-api/napi.h:
/Users/mac/.electron-gyp/28.3.3/include/node/node_api.h:
/Users/mac/.electron-gyp/28.3.3/include/node/js_native_api.h:
/Users/mac/.electron-gyp/28.3.3/include/node/js_native_api_types.h:
/Users/mac/.electron-gyp/28.3.3/include/node/node_api_types.h:
/Users/mac/Data/Projects/PJSIP/electron-pjsip/node_modules/node-addon-api/napi-inl.h:
/Users/mac/Data/Projects/PJSIP/electron-pjsip/node_modules/node-addon-api/napi-inl.deprecated.h:
../../pjproject-2.15.1/pjsip/include/pjsua-lib/pjsua.h:
../../pjproject-2.15.1/pjsip/include/pjsip.h:
../../pjproject-2.15.1/pjsip/include/pjsip/sip_types.h:
../../pjproject-2.15.1/pjsip/include/pjsip/sip_config.h:
../../pjproject-2.15.1/pjlib/include/pj/types.h:
../../pjproject-2.15.1/pjlib/include/pj/config.h:
../../pjproject-2.15.1/pjlib/include/pj/compat/cc_clang.h:
../../pjproject-2.15.1/pjlib/include/pj/compat/os_darwinos.h:
../../pjproject-2.15.1/pjlib/include/pj/compat/size_t.h:
../../pjproject-2.15.1/pjlib/include/pj/config_site.h:
../../pjproject-2.15.1/pjlib/include/pj/limits.h:
../../pjproject-2.15.1/pjlib/include/pj/compat/limits.h:
../../pjproject-2.15.1/pjsip/include/pjsip/sip_errno.h:
../../pjproject-2.15.1/pjlib/include/pj/errno.h:
../../pjproject-2.15.1/pjlib/include/pj/compat/errno.h:
../../pjproject-2.15.1/pjsip/include/pjsip/sip_uri.h:
../../pjproject-2.15.1/pjlib/include/pj/assert.h:
../../pjproject-2.15.1/pjlib/include/pj/compat/assert.h:
../../pjproject-2.15.1/pjlib/include/pj/log.h:
../../pjproject-2.15.1/pjlib/include/pj/list.h:
../../pjproject-2.15.1/pjlib-util/include/pjlib-util/scanner.h:
../../pjproject-2.15.1/pjlib-util/include/pjlib-util/types.h:
../../pjproject-2.15.1/pjlib-util/include/pjlib-util/config.h:
../../pjproject-2.15.1/pjlib-util/include/pjlib-util/scanner_cis_bitwise.h:
../../pjproject-2.15.1/pjsip/include/pjsip/sip_tel_uri.h:
../../pjproject-2.15.1/pjsip/include/pjsip/sip_msg.h:
../../pjproject-2.15.1/pjsip/include/pjsip/sip_multipart.h:
../../pjproject-2.15.1/pjsip/include/pjsip/sip_parser.h:
../../pjproject-2.15.1/pjsip/include/pjsip/sip_event.h:
../../pjproject-2.15.1/pjlib/include/pj/timer.h:
../../pjproject-2.15.1/pjlib/include/pj/lock.h:
../../pjproject-2.15.1/pjsip/include/pjsip/sip_module.h:
../../pjproject-2.15.1/pjsip/include/pjsip/sip_endpoint.h:
../../pjproject-2.15.1/pjsip/include/pjsip/sip_transport.h:
../../pjproject-2.15.1/pjsip/include/pjsip/sip_resolve.h:
../../pjproject-2.15.1/pjlib-util/include/pjlib-util/resolver.h:
../../pjproject-2.15.1/pjlib-util/include/pjlib-util/dns.h:
../../pjproject-2.15.1/pjlib/include/pj/sock.h:
../../pjproject-2.15.1/pjlib/include/pj/compat/socket.h:
../../pjproject-2.15.1/pjlib/include/pj/ioqueue.h:
../../pjproject-2.15.1/pjsip/include/pjsip/sip_util.h:
../../pjproject-2.15.1/pjsip/include/pjsip/sip_transport_udp.h:
../../pjproject-2.15.1/pjlib/include/pj/sock_qos.h:
../../pjproject-2.15.1/pjsip/include/pjsip/sip_transport_loop.h:
../../pjproject-2.15.1/pjsip/include/pjsip/sip_transport_tcp.h:
../../pjproject-2.15.1/pjsip/include/pjsip/sip_transport_tls.h:
../../pjproject-2.15.1/pjlib/include/pj/pool.h:
../../pjproject-2.15.1/pjlib/include/pj/ssl_sock.h:
../../pjproject-2.15.1/pjlib/include/pj/string.h:
../../pjproject-2.15.1/pjlib/include/pj/compat/string.h:
../../pjproject-2.15.1/pjsip/include/pjsip/sip_auth.h:
../../pjproject-2.15.1/pjsip/include/pjsip/sip_auth_msg.h:
../../pjproject-2.15.1/pjsip/include/pjsip/sip_auth_aka.h:
../../pjproject-2.15.1/pjsip/include/pjsip/sip_auth_parser.h:
../../pjproject-2.15.1/pjsip/include/pjsip/sip_transaction.h:
../../pjproject-2.15.1/pjsip/include/pjsip/sip_ua_layer.h:
../../pjproject-2.15.1/pjsip/include/pjsip/sip_dialog.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/alaw_ulaw.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/types.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/config.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/avi_stream.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/port.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/clock.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/event.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/audiodev.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia-audiodev/config.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia-audiodev/errno.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/format.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/frame.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/rtcp_fb.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/rtcp.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/rtcp_xr.h:
../../pjproject-2.15.1/pjlib/include/pj/math.h:
../../pjproject-2.15.1/pjlib/include/pj/compat/high_precision.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/rtp.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/sdp.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/signatures.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/videodev.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia-videodev/config.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia-videodev/errno.h:
../../pjproject-2.15.1/pjlib/include/pj/os.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/bidirectional.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/circbuf.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/codec.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/conference.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/converter.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/delaybuf.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/echo.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/echo_port.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/endpoint.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/transport.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/errno.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia-audiodev/audiodev.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/g711.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia-codec/types.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia-codec/config.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/jbuf.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/master_port.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/mem_port.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/null_port.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/plc.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/resample.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/sdp_neg.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/silencedet.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/sound.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/sound_port.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/splitcomb.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/stereo.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/stream.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/vid_codec.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/stream_common.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/tonegen.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/transport_adapter_sample.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/transport_ice.h:
../../pjproject-2.15.1/pjnath/include/pjnath/ice_strans.h:
../../pjproject-2.15.1/pjnath/include/pjnath/ice_session.h:
../../pjproject-2.15.1/pjnath/include/pjnath/types.h:
../../pjproject-2.15.1/pjnath/include/pjnath/config.h:
../../pjproject-2.15.1/pjnath/include/pjnath/stun_session.h:
../../pjproject-2.15.1/pjnath/include/pjnath/stun_msg.h:
../../pjproject-2.15.1/pjnath/include/pjnath/stun_auth.h:
../../pjproject-2.15.1/pjnath/include/pjnath/stun_config.h:
../../pjproject-2.15.1/pjnath/include/pjnath/stun_transaction.h:
../../pjproject-2.15.1/pjnath/include/pjnath/errno.h:
../../pjproject-2.15.1/pjnath/include/pjnath/stun_sock.h:
../../pjproject-2.15.1/pjnath/include/pjnath/turn_sock.h:
../../pjproject-2.15.1/pjnath/include/pjnath/turn_session.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/transport_loop.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/transport_srtp.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/transport_udp.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/vid_conf.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/vid_port.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia-videodev/videodev.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/vid_stream.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/wav_playlist.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/wav_port.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/wave.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia/wsola.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia-codec.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia-codec/and_aud_mediacodec.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia-codec/and_vid_mediacodec.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia-codec/audio_codecs.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia-codec/passthrough.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia-codec/bcg729.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia-codec/ffmpeg_vid_codecs.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia-codec/g722.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia-codec/g7221.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia-codec/gsm.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia-codec/ilbc.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia-codec/ipp_codecs.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia-codec/l16.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia-codec/lyra.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia-codec/opencore_amr.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia-codec/openh264.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia-codec/opus.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia-codec/silk.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia-codec/speex.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia-codec/vid_toolbox.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia-codec/vpx.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia_videodev.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia-videodev/videodev_imp.h:
../../pjproject-2.15.1/pjmedia/include/pjmedia-videodev/avi_dev.h:
../../pjproject-2.15.1/pjsip/include/pjsip_ua.h:
../../pjproject-2.15.1/pjsip/include/pjsip-ua/sip_inv.h:
../../pjproject-2.15.1/pjsip/include/pjsip-ua/sip_regc.h:
../../pjproject-2.15.1/pjsip/include/pjsip-ua/sip_replaces.h:
../../pjproject-2.15.1/pjsip/include/pjsip-ua/sip_xfer.h:
../../pjproject-2.15.1/pjsip/include/pjsip-simple/evsub.h:
../../pjproject-2.15.1/pjsip/include/pjsip-simple/types.h:
../../pjproject-2.15.1/pjsip/include/pjsip-ua/sip_100rel.h:
../../pjproject-2.15.1/pjsip/include/pjsip-ua/sip_timer.h:
../../pjproject-2.15.1/pjsip/include/pjsip_simple.h:
../../pjproject-2.15.1/pjsip/include/pjsip-simple/dlg_event.h:
../../pjproject-2.15.1/pjsip/include/pjsip-simple/dialog_info.h:
../../pjproject-2.15.1/pjlib-util/include/pjlib-util/xml.h:
../../pjproject-2.15.1/pjsip/include/pjsip-simple/evsub_msg.h:
../../pjproject-2.15.1/pjsip/include/pjsip-simple/iscomposing.h:
../../pjproject-2.15.1/pjsip/include/pjsip-simple/mwi.h:
../../pjproject-2.15.1/pjsip/include/pjsip-simple/presence.h:
../../pjproject-2.15.1/pjsip/include/pjsip-simple/pidf.h:
../../pjproject-2.15.1/pjsip/include/pjsip-simple/xpidf.h:
../../pjproject-2.15.1/pjsip/include/pjsip-simple/rpid.h:
../../pjproject-2.15.1/pjsip/include/pjsip-simple/publish.h:
../../pjproject-2.15.1/pjnath/include/pjnath.h:
../../pjproject-2.15.1/pjnath/include/pjnath/nat_detect.h:
../../pjproject-2.15.1/pjnath/include/pjnath/upnp.h:
../../pjproject-2.15.1/pjlib-util/include/pjlib-util.h:
../../pjproject-2.15.1/pjlib-util/include/pjlib-util/errno.h:
../../pjproject-2.15.1/pjlib-util/include/pjlib-util/getopt.h:
../../pjproject-2.15.1/pjlib-util/include/pjlib-util/base64.h:
../../pjproject-2.15.1/pjlib-util/include/pjlib-util/crc32.h:
../../pjproject-2.15.1/pjlib-util/include/pjlib-util/hmac_md5.h:
../../pjproject-2.15.1/pjlib-util/include/pjlib-util/md5.h:
../../pjproject-2.15.1/pjlib-util/include/pjlib-util/hmac_sha1.h:
../../pjproject-2.15.1/pjlib-util/include/pjlib-util/sha1.h:
../../pjproject-2.15.1/pjlib-util/include/pjlib-util/srv_resolver.h:
../../pjproject-2.15.1/pjlib-util/include/pjlib-util/dns_server.h:
../../pjproject-2.15.1/pjlib-util/include/pjlib-util/string.h:
../../pjproject-2.15.1/pjlib-util/include/pjlib-util/json.h:
../../pjproject-2.15.1/pjlib-util/include/pjlib-util/stun_simple.h:
../../pjproject-2.15.1/pjlib-util/include/pjlib-util/pcap.h:
../../pjproject-2.15.1/pjlib-util/include/pjlib-util/http_client.h:
../../pjproject-2.15.1/pjlib/include/pj/activesock.h:
../../pjproject-2.15.1/pjlib-util/include/pjlib-util/cli.h:
../../pjproject-2.15.1/pjlib-util/include/pjlib-util/cli_console.h:
../../pjproject-2.15.1/pjlib-util/include/pjlib-util/cli_imp.h:
../../pjproject-2.15.1/pjlib-util/include/pjlib-util/cli_telnet.h:
../../pjproject-2.15.1/pjlib/include/pjlib.h:
../../pjproject-2.15.1/pjlib/include/pj/addr_resolv.h:
../../pjproject-2.15.1/pjlib/include/pj/argparse.h:
../../pjproject-2.15.1/pjlib/include/pj/ctype.h:
../../pjproject-2.15.1/pjlib/include/pj/compat/ctype.h:
../../pjproject-2.15.1/pjlib/include/pj/array.h:
../../pjproject-2.15.1/pjlib/include/pj/atomic_queue.h:
../../pjproject-2.15.1/pjlib/include/pj/except.h:
../../pjproject-2.15.1/pjlib/include/pj/compat/setjmp.h:
../../pjproject-2.15.1/pjlib/include/pj/fifobuf.h:
../../pjproject-2.15.1/pjlib/include/pj/file_access.h:
../../pjproject-2.15.1/pjlib/include/pj/file_io.h:
../../pjproject-2.15.1/pjlib/include/pj/guid.h:
../../pjproject-2.15.1/pjlib/include/pj/hash.h:
../../pjproject-2.15.1/pjlib/include/pj/ip_helper.h:
../../pjproject-2.15.1/pjlib/include/pj/pool_buf.h:
../../pjproject-2.15.1/pjlib/include/pj/rand.h:
../../pjproject-2.15.1/pjlib/include/pj/rbtree.h:
../../pjproject-2.15.1/pjlib/include/pj/sock_select.h:
../../pjproject-2.15.1/pjlib/include/pj/unicode.h:
../../pjproject-2.15.1/pjlib/include/pj/unittest.h:
