#!/bin/bash

php -r "apc_clear_cache(); apc_clear_cache('user'); apc_clear_cache('opcode');"