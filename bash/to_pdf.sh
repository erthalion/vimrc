#!/bin/bash

wkhtmltopdf -L 10mm -R 10mm -T 20mm -B 20mm $1 $1.pdf
