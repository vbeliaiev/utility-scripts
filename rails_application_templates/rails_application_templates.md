
## Rails application templates

When starting a new Rails project, it's important to quickly and efficiently set up the basic environment. In this doc, I left my preferred options for generating a new application with the optimal set of commands to minimize routine configuration.

### 🚀 Generating a Basic Rails Application

To create a new application with the minimal set of parameters, we can use the following command:

```bash
rails new <app_name> --database=postgresql --css=tailwind
 --skip-docker --skip-action-mailer --skip-action-mailbox --skip-action-text
 --skip-active-job --skip-action-cable --skip-jbuilder --skip-test --skip-ci
 --skip-kamal --skip-solid --no-devcontainer
```

Alternatively, a shorter command:

```bash
rails new <app_name> --minimal --database=postgresql --skip-test --skip-solid
```

Both commands are functionally (almost) similar, so I will use the second one for further testing.


### 🔧 Minimal Environment Setup

After generating the application, it’s essential to add the necessary tools for development and testing.

#### ✅ Installing RSpec, FactoryBot, and ShouldaMatchers
```bash
rails app:template LOCATION='active_storage_template.rb'

```

#### 📂 Configuring ActiveStorage for File Uploads
```bash
rails app:template LOCATION='active_storage_template.rb'
```

#### 🤖 Or install the application from scratch.
```bash
export UTILITY_PATH="../utility-scripts/rails_application_templates"

rails new <app_name> --minimal --database=postgresql --skip-test --skip-solid
cd <app_name> && rails app:template LOCATION="$UTILITY_PATH/simple_app_main_template.rb"

```
