#!/bin/bash
echo "Get only valid email addresses on a list of emails"

grep -E '^([a-z0-9._-]+)@(.+)(\..+)' text/email.txt


