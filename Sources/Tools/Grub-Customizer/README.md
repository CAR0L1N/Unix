If you are not using Ubuntu (or one of its derivates) you cannot use the ppa to install Grub Customizer. To install it anyway, you have to download and compile the sources. All the following lines starting with $ are shell commands - open a terminal and execute them (but don't copy the $ ;-) )!

Make sure your grub2 contains the grub-mkconfig script (included since version 1.97).

# step one: Install these packages:

 * cmake
 * g++ OR gcc-c++
 * libgtkmm-3.0-dev OR gtkmm30-devel [when using the gtk-2 version you need libgtkmm-2.4-dev OR gtkmm24-devel]
 * gettext
 * libssl-dev OR openssl-devel
 * libarchive-dev OR libarchive-devel

<code># sudo apt install cmake g++ libgtkmm-3.0-dev libgtkmm-2.4-dev gettext libarchive-dev libarchive-dev -y</code>

(The package names may be different, depending on the distribution they are using on)

# step two: download the sources:

download the tar.gz-package here: https://launchpad.net/grub-customizer/+download
…and extract its contents.

# step three: compile the sources:

Go into the source directory extracted from the tar.gz file, then run

$ cmake . && make

If you get a cmake version error, try to set the "cmake_minimum_required" value to your installed version - I only written down the lowest tested version, so older versions may be compatible too.

# step four: install some (optional) runtime dependencies:

 * hwinfo

# step five: install Grub Customizer

$ sudo make install

Then you can start Grub Customizer using the menu or by running `gksu grub-customizer` / `sudo grub-customizer`

On some distributions, this may fail ("bootloader not found"), because some of the commands / directories doesn't exist on the expected names. Please make sure, these commands are accessible:

grub-mkconfig
grub-install

and these pathes/files:

/etc/grub.d
/boot/grub
/boot/grub/grub.cfg
/etc/default/grub

If not, there may be alternative commands/pathes, if Grub2 is installed. Please try to find them out and create a config file at /etc/grub-customizer/grub.cfg containing this content (the values of this example are valid on fedora 16 - change them, if they are different):

MKCONFIG_CMD=grub2-mkconfig
INSTALL_CMD=grub2-install
MKFONT_CMD=grub2-mkfont
CFG_DIR=/etc/grub.d
OUTPUT_DIR=/boot/grub2
OUTPUT_FILE=/boot/grub2/grub.cfg
SETTINGS_FILE=/etc/default/grub
DEVICEMAP_FILE="/boot/grub2/device.map"
MKDEVICEMAP_CMD="grub2-mkdevicemap --device-map=/dev/stdout"
