#!/bin/bash

if [[ -z "$MYENV" ]]; then
    echo "MYENV not set, set this for the platform/environment you're working in." 2>&1
    echo ""
    echo "example for LAB environment:  export MYENV=lab"
    echo ""
    echo " SITE     |  Variable "
    echo "--------- | ---------- "
    echo " LAB      |  lab "
    echo " DEV      |  dev "
    echo " NON-PROD |  NP"
    echo " PROD     |  PROD"
    echo ""
    exit 1
fi
