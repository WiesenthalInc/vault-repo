# Organize Github accounts

# Add a users to the organization
resource "github_membership" "membership_for_andre_veelken" {
  username = "ae-v"
  role     = "member"
}

resource "github_membership" "membership_for_pascal_pflaum" {
  username = "PascalPflaum"
  role     = "member"
}

# Add a vault team to the organisation
resource "github_team" "vault_team" {
  name        = "vault-devs"
  description = "Cool team doing vault stuff"
  privacy     = "closed"
}

# Add user to the vault team
resource "github_team_membership" "vault_team_membership_pp" {
  team_id  = "${github_team.vault_team.id}"
  username = "PascalPflaum"
  role     = "maintainer"
}

resource "github_team_membership" "vault_team_membership_av" {
  team_id  = "${github_team.vault_team.id}"
  username = "ae-v"
  role     = "maintainer"
}

resource "github_team_membership" "vault_team_membership_tw" {
  team_id  = "${github_team.vault_team.id}"
  username = "twiesenthal"
  role     = "maintainer"
}

# Add a vault repo to the vault team
resource "github_repository" "vault_repo" {
  name = "vault-repo"
}

resource "github_team_repository" "vault_team_repo" {
  team_id    = "${github_team.vault_team.id}"
  repository = "${github_repository.vault_repo.name}"
  permission = "admin"
}
