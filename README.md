# Ansible Role: Wazuh Agent

[![CI](https://github.com/AnyLinQ-B-V/ansible-role-wazuhagent/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/AnyLinQ-B-V/ansible-role-wazuhagent/actions/workflows/ci.yml)
[![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE)

A role for installing and configuring the Wazuh Agent.

## Supported Platforms

- **Red Hat Enterprise Linux**
  - 8
  - 9
- **Debian**
  - 11 (Bullseye)
  - 12 (Bookworm)

## Requirements

  - Ansible >= 2.10
  - Python 3.x

### Important Configuration Requirement

The `wazuh_manager_ip` variable **must** be set to the IP address of your Wazuh Manager. By default, it is set to `127.0.0.1`. This is an intentional safeguard to prevent accidental misconfiguration that could disrupt your existing setup. By requiring you to explicitly configure this variable, we ensure that you are fully aware of the changes being made to your environment.

Example:
```yaml
wazuh_manager_ip: "192.168.1.100"  # Replace with the actual IP of your Wazuh Manager
```

## Role Variables

### Defaults

The following variables are defined in `defaults/main.yml` and can be overridden as needed:

```yaml
# Wazuh Manager Configuration
wazuh_version: "4.x"                                 # Wazuh agent version
wazuh_manager_ip: "1.2.3.4"                          # IP address of the Wazuh manager
wazuh_manager_port: 1514                             # Port for Wazuh manager communication
wazuh_manager_protocol: tcp                          # Protocol for communication (tcp/udp)

# Wazuh Registration Configuration
wazuh_registration_server: "{{ wazuh_manager_ip }}"  # Registration server (defaults to manager IP)
wazuh_registration_port: 1515                        # Registration server port
wazuh_registration_password: ""                      # Registration password (leave empty if not required)
wazuh_registration_ca_path: ""                       # Path to CA certificate for registration (optional)
wazuh_registration_certificate_path: ""              # Path to client certificate (optional)
wazuh_registration_key_path: ""                      # Path to client key (optional)

# Agent Configuration
wazuh_agent_name: "{{ ansible_hostname }}"           # Name of the agent (defaults to hostname)
wazuh_agent_group: "default"                         # Agent group
wazuh_keep_alive_interval: 10                        # Keep-alive interval in seconds
wazuh_time_reconnect: 60                             # Time to wait before reconnecting in seconds
wazuh_enrollment_delay: 20                           # Delay before enrollment in seconds

# Installation Options
wazuh_agent_reinstall: false                         # Force reinstall of the agent
wazuh_agent_dl_only: false                           # Download only, do not install
```

## Dependencies

None.

## Example Playbook

This example is taken from `molecule/default/converge.yml` and is tested on each push, pull request, and release.
```yaml
- name: Converge
  hosts: all
  become: yes
  gather_facts: yes

  roles:
    - role: anylinq.ansible-role-wazuhagent
```

## Testing

This role is tested using Molecule with the following test matrix:
  - Debian 12
  - Ubuntu 22.04

### Running Tests Locally

First, install the Python dependencies:
```bash
python -m pip install --upgrade -r requirements.txt
```

Then run the tests for specific distributions:

```bash
# For Debian 12
MOLECULE_DISTRO=debian12 molecule test

# For Ubuntu 22.04
MOLECULE_DISTRO=ubuntu2404 molecule test
```

The CI pipeline automatically tests all supported distributions.

## License

MIT

## Changelog

See [CHANGELOG.md](https://github.com/AnyLinQ-B-V/ansible-role-wazuhagent/blob/main/CHANGELOG.md) for a list of all notable changes to this project.

## Security

Please see our [Security Policy](https://github.com/AnyLinQ-B-V/ansible-role-wazuhagent/blob/main/SECURITY.md) for reporting vulnerabilities.

## Contributing

Please read our [Contributing Guide](https://github.com/AnyLinQ-B-V/ansible-role-wazuhagent/blob/main/CONTRIBUTING.md) and our [Code of Conduct](https://github.com/AnyLinQ-B-V/ansible-role-wazuhagent/blob/main/CODE_OF_CONDUCT.md) before submitting a Pull Request.

---

<div align="center">
Created and maintained by <a href="https://www.anylinq.com">AnyLinQ B.V.</a><br/><br/>
<a href="https://www.anylinq.com"><img src="https://anylinq.com/hubfs/AnyLinQ%20transparant.png" width="120" alt="AnyLinQ Logo"/></a>
</div>

---

<sub>Author: Ronny Roethof (<a href="mailto:ronny@roethof.net">ronny@roethof.net</a>)</sub>
