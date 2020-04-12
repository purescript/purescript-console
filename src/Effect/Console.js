"use strict";

exports._log = function (s) {
  return function () {
    console.log(s);
    return {};
  };
};

exports._warn = function (s) {
  return function () {
    console.warn(s);
    return {};
  };
};

exports._error = function (s) {
  return function () {
    console.error(s);
    return {};
  };
};

exports._info = function (s) {
  return function () {
    console.info(s);
    return {};
  };
};

exports.time = function (s) {
  return function () {
    console.time(s);
    return {};
  };
};

exports.timeLog = function (s) {
  return function () {
    console.timeLog(s);
    return {};
  };
};

exports.timeEnd = function (s) {
  return function () {
    console.timeEnd(s);
    return {};
  };
};

exports.clear = function () {
  console.clear();
  return {};
};
