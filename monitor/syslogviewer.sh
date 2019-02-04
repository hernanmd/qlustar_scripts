#!/bin/bash
# It requires tmuxp fo facilitate finding the correct USB device

function launch_viewer() {
	tmuxp load .tmuxp.yaml
}

launch_viewer
