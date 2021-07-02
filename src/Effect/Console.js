"use strict";

export var log = function (s) {
  return function () {
    console.log(s);
  };
};

export var warn = function (s) {
  return function () {
    console.warn(s);
  };
};

export var error = function (s) {
  return function () {
    console.error(s);
  };
};

export var info = function (s) {
  return function () {
    console.info(s);
  };
};

export var time = function (s) {
  return function () {
    console.time(s);
  };
};

export var timeLog = function (s) {
  return function () {
    console.timeLog(s);
  };
};

export var timeEnd = function (s) {
  return function () {
    console.timeEnd(s);
  };
};

export var clear = function () {
  console.clear();
};
