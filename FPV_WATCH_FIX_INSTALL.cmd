@echo off
chcp 65001 >nul
setlocal EnableExtensions
title FPV WATCH FIX
cd /d "C:\telegram_aggregator" 2>nul
if not exist "C:\telegram_aggregator\fpv_bot\FPV_GITHUB_WATCH.ps1" if exist "%~dp0FPV_GITHUB_WATCH.ps1" cd /d "%~dp0"
echo.
echo FPV WATCH FIX - newest restore tag by date, aggregator stays running
echo.
set "PYEXE="
where python >nul 2>nul && set "PYEXE=python"
if not defined PYEXE where py >nul 2>nul && set "PYEXE=py"
if not defined PYEXE if exist "%LocalAppData%\Programs\Python\pythoncore-3.14-64\python.exe" set "PYEXE=%LocalAppData%\Programs\Python\pythoncore-3.14-64\python.exe"
if not defined PYEXE if exist "C:\Users\user\AppData\Local\Python\pythoncore-3.14-64\python.exe" set "PYEXE=C:\Users\user\AppData\Local\Python\pythoncore-3.14-64\python.exe"
if not defined PYEXE (echo no python & pause & exit /b 34)
set "TMPPY=%TEMP%\FPV_WATCH_FIX.py"
set "TMPB64=%TEMP%\FPV_WATCH_FIX.b64"
type nul > "%TMPB64%"
(echo IyAtKi0gY29kaW5nOiB1dGYtOCAtKi0KZnJvbSBfX2Z1dHVyZV9fIGltcG9ydCBhbm5vdGF0aW9u)>> "%TMPB64%"
(echo cwppbXBvcnQgcmUKZnJvbSBkYXRldGltZSBpbXBvcnQgZGF0ZXRpbWUKZnJvbSBwYXRobGliIGlt)>> "%TMPB64%"
(echo cG9ydCBQYXRoCgpUUyA9IGRhdGV0aW1lLm5vdygpLnN0cmZ0aW1lKCIlWSVtJWRfJUglTSVTIikK)>> "%TMPB64%"
(echo CmRlZiBtYWluKCk6CiAgICBwYXRoID0gUGF0aChyIkM6XHRlbGVncmFtX2FnZ3JlZ2F0b3JcZnB2)>> "%TMPB64%"
(echo X2JvdFxGUFZfR0lUSFVCX1dBVENILnBzMSIpCiAgICBwcmludCgiPT09IFdBVENIIEZJWCIsIFRT)>> "%TMPB64%"
(echo LCAiPT09IikKICAgIHByaW50KCJwYXRoPSIsIHBhdGgpCiAgICBpZiBub3QgcGF0aC5leGlzdHMo)>> "%TMPB64%"
(echo KToKICAgICAgICBwcmludCgiTk9UIEZPVU5EIikKICAgICAgICByZXR1cm4gMQogICAgcmF3ID0g)>> "%TMPB64%"
(echo cGF0aC5yZWFkX3RleHQoZW5jb2Rpbmc9InV0Zi04IikKICAgIGlmICJmb3ItZWFjaC1yZWYgLS1z)>> "%TMPB64%"
(echo b3J0PS1jcmVhdG9yZGF0ZSIgaW4gcmF3OgogICAgICAgIHByaW50KCJBTFJFQURZIFBBVENIRUQi)>> "%TMPB64%"
(echo KQogICAgICAgIHJldHVybiAwCiAgICBuZXcgPSAnJGxhdGVzdCA9IChnaXQgLUMgJHdvcmsgZm9y)>> "%TMPB64%"
(echo LWVhY2gtcmVmIC0tc29ydD0tY3JlYXRvcmRhdGUgLS1mb3JtYXQ9IiUocmVmbmFtZTpzaG9ydCki)>> "%TMPB64%"
(echo ICJyZWZzL3RhZ3MvcmVzdG9yZS8qIiB8IFNlbGVjdC1PYmplY3QgLUZpcnN0IDEpJwogICAgcngg)>> "%TMPB64%"
(echo PSByZS5jb21waWxlKHIiXCRsYXRlc3Rccyo9XHMqXChccypcJHRhZ3NccypcfFxzKlNvcnQtT2Jq)>> "%TMPB64%"
(echo ZWN0XHMqXHxccypTZWxlY3QtT2JqZWN0XHMqLUxhc3RccyoxXHMqXCkiKQogICAgaWYgbm90IHJ4)>> "%TMPB64%"
(echo LnNlYXJjaChyYXcpOgogICAgICAgIHByaW50KCJMSU5FIE5PVCBGT1VORCIpCiAgICAgICAgZm9y)>> "%TMPB64%"
(echo IGksIGxpbmUgaW4gZW51bWVyYXRlKHJhdy5zcGxpdGxpbmVzKCksIDEpOgogICAgICAgICAgICBp)>> "%TMPB64%"
(echo ZiAoImxhdGVzdCIgaW4gbGluZSkgb3IgKCJTb3J0LU9iamVjdCIgaW4gbGluZSkgb3IgKCJyZXN0)>> "%TMPB64%"
(echo b3JlIiBpbiBsaW5lKToKICAgICAgICAgICAgICAgIHByaW50KCIlZDogJXMiICUgKGksIGxpbmUp)>> "%TMPB64%"
(echo KQogICAgICAgIHJldHVybiAyCiAgICBiYWsgPSBwYXRoLndpdGhfbmFtZSgiRlBWX0dJVEhVQl9X)>> "%TMPB64%"
(echo QVRDSC5wczEuYmFrXyIgKyBUUykKICAgIGJhay53cml0ZV90ZXh0KHJhdywgZW5jb2Rpbmc9InV0)>> "%TMPB64%"
(echo Zi04IikKICAgIHByaW50KCJiYWNrdXA9IiwgYmFrKQogICAgcGF0aC53cml0ZV90ZXh0KHJ4LnN1)>> "%TMPB64%"
(echo YihuZXcsIHJhdywgY291bnQ9MSksIGVuY29kaW5nPSJ1dGYtOCIpCiAgICBjaGVjayA9IHBhdGgu)>> "%TMPB64%"
(echo cmVhZF90ZXh0KGVuY29kaW5nPSJ1dGYtOCIpCiAgICBvayA9ICJmb3ItZWFjaC1yZWYgLS1zb3J0)>> "%TMPB64%"
(echo PS1jcmVhdG9yZGF0ZSIgaW4gY2hlY2sKICAgIHByaW50KCJ3cml0dGVuPSIsIG9rKQogICAgcHJp)>> "%TMPB64%"
(echo bnQoIkRPTkUuIEFnZ3JlZ2F0b3Igd2FzIG5vdCBzdG9wcGVkLiIpCiAgICBwcmludCgiTmV4dCBz)>> "%TMPB64%"
(echo bG90IDowNyA6MjIgOjM3IDo1MiB3aWxsIHRha2UgYnVpbGQgNDkuIikKICAgIHJldHVybiAwIGlm)>> "%TMPB64%"
(echo IG9rIGVsc2UgMwoKaWYgX19uYW1lX18gPT0gIl9fbWFpbl9fIjoKICAgIHJhaXNlIFN5c3RlbUV4)>> "%TMPB64%"
(echo aXQobWFpbigpKQo=)>> "%TMPB64%"

"%PYEXE%" -c "import base64,pathlib; pathlib.Path(r'%TMPPY%').write_bytes(base64.b64decode(pathlib.Path(r'%TMPB64%').read_text(encoding='ascii')))"
"%PYEXE%" "%TMPPY%"
echo.
pause
