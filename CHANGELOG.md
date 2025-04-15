# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.1.0] - 2025-04-15

### Added
- Support for Red Hat Enterprise Linux 9 and Debian 12 (Bookworm).
- OS-specific variable files in the `vars` directory (`redhat-8.yml`, `redhat-9.yml`, `debian-11.yml`, `debian-12.yml`).
- Detailed comments in `tasks/main.yml` and `handlers/main.yml` for better readability.
- Example playbook in the `README.md` file.
- Molecule test matrix for Debian 12 and Ubuntu 22.04.

### Changed
- Replaced all instances of `template-ansible-role` with `ansible-role-wazuhagent` in the `README.md` and other files.
- Updated `README.md` to reflect the correct repository path and supported platforms.
- Improved task structure in `tasks/main.yml` by grouping distro-specific tasks into blocks.

### Fixed
- Ensured all variables in `defaults/main.yml` are correctly used in tasks and handlers.
- Corrected links in the `README.md` to point to the correct GitHub repository.

## [0.0.1] - 2022-10-11

### Added

- Example `.github` workflows for CI/CD.
- The `PULL_REQUEST_TEMPLATE.md` file to ensure a standard for PRs.
- This `CHANGELOG.md` file to serve as an evolving example of a standardized open-source project changelog.
- The `CODE_OF_CONDUCT.md` file to pledge our code of conduct.
- The `CONTRIBUTING.md` file to provide a contributing policy.
- The `LICENSE.md` file to give legal information about the copyright licensing.
- The `SECURITY.md` file to provide a Responsibility Disclosure Statement.
