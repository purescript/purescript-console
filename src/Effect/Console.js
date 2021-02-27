"use strict";

exports._log = function (s) {
  return function () {
    console.log(s);
  };
};

exports._warn = function (s) {
  return function () {
    console.warn(s);
  };
};

exports._error = function (s) {
  return function () {
    console.error(s);
  };
};

exports._info = function (s) {
  return function () {
    console.info(s);
  };
};

exports.time = function (s) {
  return function () {
    console.time(s);
  };
};

exports.timeLog = function (s) {
  return function () {
    console.timeLog(s);
  };
};

exports.timeEnd = function (s) {
  return function () {
    console.timeEnd(s);
  };
};

exports.clear = function () {
  console.clear();
};
