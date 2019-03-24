# Conference Application

## Table of contents

* [Installation instructions](#installation-instructions)
    * [Installing DreamHouse using Salesforce DX](#installing-dreamhouse-using-salesforce-dx)
    * [Installing DreamHouse using an unlocked package](#installing-dreamhouse-using-an-unlocked-package)
* [Code highlights](#code-highlights)
* [Additional resources](#additional-resources)

## Installation Instructions

There are two ways to install DreamHouse:
- Using Salesforce DX
- Using an unlocked package

### Installing DreamHouse using Salesforce DX
This is the recommended installation option for developers who want to experience the app and the code.

1. Install Salesforce DX. Enable the Dev Hub in your org or sign up for a Dev Hub trial org and install the Salesforce DX CLI. Follow the instructions in the [Salesforce DX Setup Guide](https://developer.salesforce.com/docs/atlas.en-us.sfdx_setup.meta/sfdx_setup/sfdx_setup_intro.htm?search_text=trial%20hub%20org) or in the [App Development with Salesforce DX](https://trailhead.salesforce.com/modules/sfdx_app_dev) Trailhead module.

1. Clone the **conference** repository:
    ```
    git clone https://github.com/VadimPutsick/conference
    cd conference
    ```

1. Create a scratch org and provide it with an alias of your choice (**conference-final** in the command below):
    ```
    sfdx force:org:create -s -f config/project-scratch-def.json -a conference-final
    ```

1. Push the app to your scratch org:
    ```
    sfdx force:source:push
    ```

1. Assign the **dreamhouse** permission set to the default user:
    ```
    sfdx force:user:permset:assign -n Conference
    ```

1. Open the scratch org:
    ```
    sfdx force:org:open
    ```

1. Select **DreamHouse** in the App Launcher

1. Click the **Data Import** tab and click **Initialize Sample Data**

### Installing DreamHouse using an unlocked package