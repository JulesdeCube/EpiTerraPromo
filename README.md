# EpiTerraPromo

@EPITA Discord promotion server Terraform config files.

## Deployement

> **:warning: Don't forget to enable `Bot` -> `Privileged Gateway Intents` ->
> `Presence Intent`. :warning:**

> **:warning: All command need to be executed in the `src/` folder:warning:**

### Init

First you need to download depencies:

```sh
cd src/
terraform init
```

(this will create the `src/.terraform/` folder)

### Config file

The main config file is in [`config.lock`](./config.json) (it's a hard_link to
[`src/terraform.tfvars.json`](./src/terraform.tfvars.json)).

```json
{
  // the bot discord secret token
  "discord_token": "YOUR_DISCORD_BOT_TOKEN",
  // the external promotion
  "promo": 2042
}
```

You can setup admin and modo in [`src/users.tf`](src/users.tf) and
[`src/role_members.tf`](src/role_members.tf).

### Deploy

First view your change:

```sh
terraform plan
```

After that can apply change:

```sh
terraform apply
```

### Usage

You can find the invitation server link with:

```sh
terafotrm output
```

## Contrubution

please reformat your code before any submision:

```sh
terraform fmt --recursive
```
