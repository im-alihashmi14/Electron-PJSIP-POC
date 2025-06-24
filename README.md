# Electron-PJSIP-POC

## How to Build This Project for Mac OS

This project includes PJSIP and related components. To build everything on Mac OS:

1. **Install Dependencies**

   Open Terminal and run:
   ```sh
   brew install openssl opencore-amr swig
   ```
   (Optional for video support: `brew install openh264 libvpx`)

2. **Build PJSIP**

   Change to the PJSIP source directory:
   ```sh
   cd pjproject-2.15.1
   ```
   Configure the build:
   ```sh
   ./configure \
     CFLAGS="-g $(pkg-config --cflags openssl) $(pkg-config --cflags opencore-amrnb) -fPIC" \
     LDFLAGS="$(pkg-config --libs-only-L openssl) $(pkg-config --libs-only-L openssl)/lib $(pkg-config --libs-only-L opencore-amrnb)" \
     CXXFLAGS="-g -fPIC"
   ```
   For video support, you may also want to add:
   ```sh
   echo "#define PJMEDIA_HAS_VIDEO 1" >> pjlib/include/pj/config_site.h
   ```
   Build the project:
   ```sh
   make
   ```

3. **(Optional) Build SWIG Bindings**

   If you need language bindings (e.g., Python, Java, C#):
   ```sh
   cd pjsip-apps/src/swig
   make
   ```

4. **(Optional) Run Unit Tests**

   ```sh
   make pjlib-test-ci pjmedia-test pjlib-util-test pjsua-test
   ```

5. **(Optional) Disable Mac Firewall for Testing**

   ```sh
   sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setglobalstate off
   ```

For more details, see the [official PJSIP documentation](https://docs.pjsip.org/en/latest/get-started/posix/index.html).
