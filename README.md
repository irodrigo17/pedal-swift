# Pedal

[![TravisCI](https://travis-ci.org/irodrigo17/pedal-swift.svg?branch=master)](https://travis-ci.org/irodrigo17/pedal-swift)

Pedal is an iOS app for cycling.

It's written entirely in Swift from the ground up.

The idea is to build a real world app in Swift, to better understand it's features and limitations.

## About Swift

Here's some notes about the interesting or challenging stuff that I have found during development with Swift.

The Swift ecosystem is still in it's early stages despite of the exponential growth that it's experiencing, so there are still some caveats.

### Dependency management

Dependency management looks in a pretty good shape now, with CocoaPods 0.36-pre supporting Swift.

### Pods

There are a lot of third party libraries out there, but the majority of them is pretty immature yet as expected.

### Testing

I have found some challenges with testing, OCMock does not fully support Swift, and it's not clear if it ever will.
[Quick](https://github.com/Quick/Quick) looks like a nice BDD framework, but no mocking yet.
Inner classes could help with manual mocking, but not always, and a good framework is much missed.

### Continuos Integration

[xctool](https://github.com/facebook/xctool) supports Swift, and so does [TravisCI](https://travis-ci.org), so this is good.
