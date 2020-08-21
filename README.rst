'Standalone' Salt States
========================

Use this repository as a Salt skeleton to easily bootstrap a host using
our shared Salt states for JCU eResearch.

To setup and obtain::

    # Setup salt
    sudo dnf install -y https://repo.saltstack.com/py3/redhat/salt-py3-repo-latest.el8.noarch.rpm
    sudo yum clean expire-cache
    sudo yum install -y salt-master salt-minion

    # Setup this project
    sudo dnf install -y git
    git clone --recursive https://github.com/jcu-eresearch/shared-salt-states-standalone.git

To run::

    cd shared-salt-states-standalone
    sudo salt-call --local -l debug --file-root=. --pillar-root=pillar state.highstate

Modify the ``top.sls`` to specify the states you need, and add any required
data into the ``pillar/base.sls`` file.  If you're not sure what pillar data
you need, inspect the source of the Salt states or otherwise run the following
and figure out what's missing in the error messages.
