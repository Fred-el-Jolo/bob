#!/bin/bash

# Conf
BOB_CSS_CODE_MIRROR=./docs/css/codemirror-5-31-0.css
BOB_CSS_EDITOR=./docs/css/editor-js.css

BOB_JS_CODE_MIRROR=./docs/js/codemirror-5-31-0.js
BOB_JS_EDITOR=./docs/js/editor-js.js

BOB_PAGES=./docs/pages

REVEAL_HOME=/home/jolo/dev/asynchronous-js
REVEAL_TARGET_CSS_DIR=/interactive-examples/css
REVEAL_TARGET_JS_DIR=/interactive-examples/js
REVEAL_TARGET_PAGES_DIR=/interactive-examples/pages

echo Cleaning $REVEAL_HOME
rm -f $REVEAL_HOME/$REVEAL_TARGET_CSS_DIR/*.*
rm -f $REVEAL_HOME/$REVEAL_TARGET_JS_DIR/*.*
rm -rf $REVEAL_HOME/$REVEAL_TARGET_PAGES_DIR/

echo Copy files
cp $BOB_CSS_CODE_MIRROR $REVEAL_HOME/$REVEAL_TARGET_CSS_DIR/
cp $BOB_CSS_EDITOR $REVEAL_HOME/$REVEAL_TARGET_CSS_DIR/

cp $BOB_JS_CODE_MIRROR $REVEAL_HOME/$REVEAL_TARGET_JS_DIR/
cp $BOB_JS_EDITOR $REVEAL_HOME/$REVEAL_TARGET_JS_DIR/

cp -R $BOB_PAGES $REVEAL_HOME/$REVEAL_TARGET_PAGES_DIR/