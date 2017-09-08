#!/usr/bin/env bash

kops export kubecfg --state @kubecfgState@ --name @kubecfgName@

kubectl set image deployment/iat-ivs-deployment iat-ivs=@dockerTagBase@/ap-ivs:@version@