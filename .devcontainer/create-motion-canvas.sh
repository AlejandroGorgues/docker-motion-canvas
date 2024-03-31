#!/bin/sh

npm init -y @motion-canvas@latest -- --name "$PROJECT_NAME" --path "$PROJECT_PATH" --language "$PROJECT_LANGUAGE" --plugins "$PROJECT_PLUGINS"

cd "$PROJECT_PATH"

npm install -y