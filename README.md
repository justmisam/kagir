# kagir
Use Kaniko inside Gitlab Runner!

If you are familiar with [Kaniko project](https://github.com/GoogleContainerTools/kaniko) and [Gitlab Runner](https://docs.gitlab.com/runner/) and you want to use Gitlab Runner in a Docker container you must bind Docker socket to use Kaniko.

But you can use this image to prevent binding Docker socket to the container of Gitlab Runner.
