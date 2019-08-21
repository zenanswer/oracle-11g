#!/usr/bin/env bash

echo "## Create TAS table space and tasadm account ##"

sqlplus / as sysdba <<-EOF |
    @/tas-init/init.sql
    exit 0
EOF

echo "## Create Service tables ##"

sqlplus tasadm/tasadm@tctas <<-EOF |
    @/tas-init/app.sql
    exit 0
EOF

echo "## Create DB_Ready indication ##"

sqlplus / as sysdba <<-EOF |
    @/tas-init/init_donw.sql
    exit 0
EOF

