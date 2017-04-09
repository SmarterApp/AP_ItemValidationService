#!/usr/bin/env bash

kops export kubecfg --state @kubecfgState@ --name @kubecfgName@

kubectl set image deployment/ap-ivs-deployment ap-ivs=@dockerTagBase@/ap-ivs:@version@