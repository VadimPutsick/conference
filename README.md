# Conference Application

## Table of contents

* [Installation instructions](#installation-instructions)
* [Interviewers Assignment](#interviewers-assignment)
* [Accept Speaker](#accept-speaker)

## Installation Instructions

### Installing Conference using Salesforce DX
This is the recommended installation option for developers who want to experience the app and the code.

1. Install Salesforce DX. Enable the Dev Hub in your org or sign up for a Dev Hub trial org and install the Salesforce DX CLI. Follow the instructions in the [Salesforce DX Setup Guide](https://developer.salesforce.com/docs/atlas.en-us.sfdx_setup.meta/sfdx_setup/sfdx_setup_intro.htm?search_text=trial%20hub%20org) or in the [App Development with Salesforce DX](https://trailhead.salesforce.com/modules/sfdx_app_dev) Trailhead module.

1. Clone the **conference** repository:
    ```
    git clone https://github.com/VadimPutsick/conference
    cd conference
    ```

1. Build project in new scratch org:
    ```
    execute
    ```
1. Open the scratch org:
    ```
    sfdx force:org:open
    ```

1. Select **Conference** in the App Launcher

## Interviewers Assignment

### Assign interviewers in Conference app.
Here’s how to assign interviewers in Conference app.

1. Create new Interview.

![create-interview](https://user-images.githubusercontent.com/25910525/55673087-9e4cdc80-58ab-11e9-9fe8-c07dde4aceff.png)

2. Check assigned interviewers.

![check-assigned-interviewers](https://user-images.githubusercontent.com/25910525/55673137-67c39180-58ac-11e9-8308-7f81eb504c88.png)

## Accept Speaker

### Accept speakers in Conference app.
Here’s how to accept potential speaker as a speaker at the conference.

1. Open Interview. On the path moving to the last stage "Accepting". Then in opened window in picklist "Accepting" 
choice value "Accept".

![accept-speaker](https://user-images.githubusercontent.com/25910525/55673145-7f027f00-58ac-11e9-940c-9a87c6a8b328.png)

2. Move on to interviewed Speaker. Check new related session.

![check-speakers-on-session](https://user-images.githubusercontent.com/25910525/55673148-8cb80480-58ac-11e9-97ac-7a77932d1bc3.png)
