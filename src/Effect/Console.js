"use strict";

exports.log = s => () => console.log(s);

exports.warn = s => () => console.warn(s);

exports.error = s => () => console.error(s);

exports.info = s => () => console.info(s);

exports.time = s => () => console.time(s);

exports.timeLog = s => () => console.timeLog(s);

exports.timeEnd = s => () => console.timeEnd(s);

exports.clear = () => console.clear();
