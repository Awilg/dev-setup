## Personal Setup

Installs the following:

* **OS X updates and Xcode Command Line Tools**
* **OS X defaults** geared towards developers
* **Developer tools**: bash, ohmyzsh, tab completion, curl, git, GNU core utils, etc
* **Developer apps**: iTerm2, Atom, Docker, Chrome, FireFox etc
* **Common data stores**: MongoDB, Redis, Robo 3T
* **Android development**: Java, Android SDK, Android Studio, IntelliJ IDEA


[Credits](#credits): This repo is 90% the work of [Donne Martin ](https://github.com/donnemartin/dev-setup) and adjusted to my needs. His is built on the awesome work from [Mathias Bynens](https://github.com/mathiasbynens) and [Nicolas Hery](https://github.com/nicolashery).

## Section 1: Installation

**Scripts tested on OS X 10.14 Mojave**

* [Single Setup Script](#single-setup-script)
* [bootstrap.sh script](#bootstrapsh-script)
    * Syncs dev-setup to your local home directory `~`
* [osxprep.sh script](#osxprepsh-script)
    * Updates OS X and installs Xcode command line tools
* [brew.sh script](#brewsh-script)
    * Installs common Homebrew formulae and apps
* [osx.sh script](#osxsh-script)
    * Sets up OS X defaults geared towards developers
* [datastores.sh script](#datastoressh-script)
    * Sets up common data stores
* [android.sh script](#androidsh-script)
    * Sets up Android development


## Section 1: Installation

    $ git clone https://github.com/donnemartin/dev-setup.git && cd dev-setup

##### Run the .dots Script with Command Line Arguments

**Since you probably don't want to install every section**, the `.dots` script supports command line arguments to run only specified sections.  Simply pass in the [scripts](#scripts) that you want to install.  Below are some examples.

Run all:

    $ ./.dots all

Run `bootstrap.sh`, `osxprep.sh`, `brew.sh`, and `osx.sh`:

    $ ./.dots bootstrap osxprep brew osx


#### Running without Git

    $ curl -O https://raw.githubusercontent.com/donnemartin/dev-setup/master/.dots && ./.dots [Add ARGS Here]

#### Scripts

* [.dots](https://github.com/donnemartin/dev-setup/blob/master/.dots)
    * Runs specified scripts
* [bootstrap.sh](https://github.com/donnemartin/dev-setup/blob/master/bootstrap.sh)
    * Syncs dev-setup to your local home directory `~`
* [osxprep.sh](https://github.com/donnemartin/dev-setup/blob/master/osxprep.sh)
    * Updates OS X and installs Xcode command line tools
* [brew.sh](https://github.com/donnemartin/dev-setup/blob/master/brew.sh)
    * Installs common Homebrew formulae and apps
* [osx.sh](https://github.com/donnemartin/dev-setup/blob/master/osx.sh)
    * Sets up OS X defaults geared towards developers
* [datastores.sh](https://github.com/donnemartin/dev-setup/blob/master/datastores.sh)
    * Sets up common data stores
* [android.sh](https://github.com/donnemartin/dev-setup/blob/master/android.sh)
    * Sets up Android development

**Notes:**

* `.dots` will initially prompt you to enter your password.
* `.dots` might ask you to re-enter your password at certain stages of the installation.
* If OS X updates require a restart, simply run `.dots` again to resume where you left off.
* When installing the Xcode command line tools, a dialog box will confirm installation.
    * Once Xcode is installed, follow the instructions on the terminal to continue.
* `.dots` runs `brew.sh`, which takes awhile to complete as some formulae need to be installed from source.
* **When `.dots` completes, be sure to restart your computer for all updates to take effect.**


#### Optional: Add Custom Commands

If `~/.extra` exists, it will be sourced along with the other files. You can use this to add a few custom commands without the need to fork this entire repository, or to add commands you don’t want to commit to a public repository.

You could also use `~/.extra` to override settings, functions, and aliases from the dev-setup repository, although it’s probably better to [fork the dev-setup repository](https://github.com/donnemartin/dev-setup/fork).

### osxprep.sh script

<p align="center">
  <img src="https://raw.githubusercontent.com/donnemartin/dev-setup-resources/master/res/xcode.jpg">
  <br/>
</p>

Run the `osxprep.sh` script:

    $ ./osxprep.sh

`osxprep.sh` will first install all updates.  If a restart is required, simply run the script again.  Once all updates are installed, `osxprep.sh` will then [Install Xcode Command Line Tools](#install-xcode-command-line-tools).

If you want to go the manual route, you can also install all updates by running "App Store", selecting the "Updates" icon, then updating both the OS and installed apps.

#### Install Xcode Command Line Tools

An important dependency before many tools such as Homebrew can work is the **Command Line Tools for Xcode**. These include compilers like gcc that will allow you to build from source.

If you are running **OS X 10.9 Mavericks or later**, then you can install the Xcode Command Line Tools directly from the command line with:

    $ xcode-select --install

**Note**: the `osxprep.sh` script executes this command.

Running the command above will display a dialog where you can either:
* Install Xcode and the command line tools
* Install the command line tools only
* Cancel the install

### brew.sh script

<p align="center">
  <img src="https://raw.githubusercontent.com/donnemartin/dev-setup-resources/master/res/homebrew2.png">
  <br/>
</p>

When setting up a new Mac, you may want to install [Homebrew](http://brew.sh/), a package manager that simplifies installing and updating applications or libraries.

Some of the apps installed by the `brew.sh` script include: Chrome, Firefox, Atom, Slack, Alfred, Docker, etc.

Run the `brew.sh` script:

    $ ./brew.sh

The `brew.sh` script takes awhile to complete, as some formulae need to be installed from source.

**For your terminal customization to take full effect, quit and re-start the terminal**

### osx.sh script

<p align="center">
  <img src="https://raw.githubusercontent.com/donnemartin/dev-setup-resources/master/res/osx.png">
  <br/>
</p>

When setting up a new Mac, you may want to set OS X defaults geared towards developers.  The `osx.sh` script also configures common third-party apps such Sublime Text and Chrome.

**Note**: **I strongly encourage you read through the commented [osx.sh source file](https://github.com/donnemartin/dev-setup/blob/master/osx.sh) and tweak any settings based on your personal preferences.  The script defaults are intended for you to customize.**  For example, if you are not running an SSD you might want to change some of the settings listed in the SSD section.

Run the `osx.sh` script:

    $ ./osx.sh

**For your terminal customization to take full effect, quit and re-start the terminal.**

### datastores.sh script

<p align="center">
  <img src="https://raw.githubusercontent.com/donnemartin/dev-setup-resources/master/res/datastores.png">
  <br/>
</p>

To set up common data stores, run the `datastores.sh` script:

    $ ./datastores.sh

### android.sh script

<p align="center">
  <img src="https://raw.githubusercontent.com/donnemartin/dev-setup-resources/master/res/android.png">
  <br/>
</p>

To set up an Android development environment, run the `android.sh` script:

    $ ./android.sh

### Credits

See the [Credits Page](https://github.com/donnemartin/dev-setup/blob/master/CREDITS.md).

### License

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
