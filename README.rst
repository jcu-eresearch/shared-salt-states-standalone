'Standalone' Salt States
========================

Use this repository as a Salt skeleton to easily bootstrap a host using
our shared Salt states for JCU eResearch.

To obtain::

    sudo yum install -y wget git
    wget -O - https://bootstrap.saltstack.com | sudo sh 
    git clone --recursive https://github.com/jcu-eresearch/shared-salt-states-standalone.git

Modify the ``top.sls`` to specify the states you need, and add any required
data into the ``pillar/base.sls`` file.  If you're not sure what pillar data
you need, just run the following and figure out what's missing in the error
messages.

To run::

    cd shared-salt-states-standalone
    sudo salt-call --local -l debug --file-root=. --pillar-root=pillar state.highstate

