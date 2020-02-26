# cf-language-detect
ColdFusion wrapper for kju2-forked ["Language Detection Library for Java"](https://github.com/kju2/language-detector).

## Installation

Install the JAR file to your existing JAVA path and restart the ColdFusion server.

1. Download and build JAR file manually from https://github.com/kju2/language-detector
2. Download pre-compiled JAR from MvnRepository. https://mvnrepository.com/artifact/io.github.kju2.languagedetector/language-detector/1.0.5
3. Use included JAR file (v1.0.5)

## Usage

Instantiate the component:

```js
    var languageDetector = new languageDetector();
```
### languageDetector.detect(text)

Returns a text string with the language detected.

```js
languageDetector("Quel est votre nom?")          // CATALAN (French?)
languageDetector("Wie heißen Sie?")              // GERMAN
languageDetector("¿Cuál es tu nombre?")          // SPANISH
languageDetector("Πως σε λένε?")                 // GREEK    
languageDetector("آپ کا نام کیا ہے؟ ")          // URDU
languageDetector("Как Вас зовут?")               // BELARUSIAN (Russian)
languageDetector("คุณชื่ออะไร?")                    // THAI
```

## Language Support

### 68 Built-in Language Profiles

1. AFRIKAANS (af)
2. ALBANIAN (sq)
3. ARABIC (ar)
4. ARAGONESE (an)
5. BASQUE (eu)
6. BELARUSIAN (be)
7. BENGALI (bn)
8. BRETON (br)
9. BULGARIAN (bg)
10. CATALAN (ca)
11. CENTRAL_KHMER (km)
12. CHINESE (zh)
13. CROATIAN (hr)
14. CZECH (cs)
15. DANISH (da)
16. DUTCH (nl)
17. ENGLISH (en)
18. ESTONIAN (et)
19. FINNISH (fi)
20. FRENCH (fr)
21. GALICIAN (gl)
22. GERMAN (de)
23. GREEK (el)
24. GUJARATI (gu)
25. HAITIAN (ht)
26. HEBREW (he)
27. HINDI (hi)
28. HUNGARIAN (hu)
29. ICELANDIC (is)
30. INDONESIAN (id)
31. IRISH (ga)
32. ITALIAN (it)
33. JAPANESE (ja)
34. KANNADA (kn)
35. KOREAN (ko)
36. LATVIAN (lv)
37. LITHUANIAN (lt)
38. MACEDONIAN (mk)
39. MALAY (ms)
40. MALAYALAM (ml)
41. MALTESE (mt)
42. MARATHI (mr)
43. NEPALI (ne)
44. NORWEGIAN (no)
45. OCCITAN (oc)
46. PANJABI (pa)
47. PERSIAN (fa)
48. POLISH (pl)
49. PORTUGUESE (pt)
50. ROMANIAN (ro)
51. RUSSIAN (ru)
52. SERBIAN (sr)
53. SLOVAK (sk)
54. SLOVENIAN (sl)
55. SOMALI (so)
56. SPANISH (es)
57. SWAHILI (sw)
58. SWEDISH (sv)
59. TAGALOG (tl)
60. TAMIL (ta)
61. TELUGU (te)
62. THAI (th)
63. TURKISH (tr)
64. UKRAINIAN (uk)
65. URDU (ur)
66. VIETNAMESE (vi)
67. WELSH (cy)
68. YIDDISH (yi) 
