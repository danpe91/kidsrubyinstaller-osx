#!/usr/bin/env bash
GEMPATH=$1/ruby/bin/gem

install_gems() {
	echo $KIDSRUBY_INSTALLING_GEMS
  ${GEMPATH} install htmlentities-4.3.0.gem 2>&1
  ${GEMPATH} install rubywarrior-0.1.2.gem 2>&1
}

install_qtbindings() {
	echo $KIDSRUBY_INSTALLING_QTBINDINGS
	${GEMPATH} install qtbindings-4.7.3-universal-darwin-10.gem 2>&1
}

install_gosu() {
	echo $KIDSRUBY_INSTALLING_GOSU
	${GEMPATH} install gosu-0.7.36.2-universal-darwin.gem 2>&1
}

install_gems
install_qtbindings
install_gosu
