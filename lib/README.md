# language-detector

## Try it out

```bash
curl -X POST https://k18vr57k5l.execute-api.eu-central-1.amazonaws.com/default/languageDetectorV1 \
  -H 'x-api-key: eFU71njyBpYOE0O6NUqW5mk7ZtmpYYO5fCe7s8u3' \
  -d '"Now, here, you see, it takes all the running you can do, to keep in the same place."'
```

## How to Use

Add the dependecy in your "pom.xml":

```xml
<dependency>
    	<groupId>io.github.kju2.languagedetector</groupId>
	<artifactId>language-detector</artifactId>
	<version>1.0.3</version>
</dependency>
```

Then create an instance of the LanguageDetector and feed it some text:

```java
LanguageDetector detector = new LanguageDetector();

String text = "This is the text you want to know the language it is written in.";
Language detectedLanguage = detector.detectPrimaryLanguageOf(text);
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

### Other Languages

You can create a language profile for your own language easily.
See https://github.com/optimaize/language-detector/blob/master/src/main/resources/README.md


## How it Works

The software uses language profiles which were created based on common text for each language.
N-grams http://en.wikipedia.org/wiki/N-gram were then extracted from that text, and that's what is stored in the profiles.

When trying to figure out in what language a certain text is written, the program goes through the same process:
It creates the same kind of n-grams of the input text. Then it compares the relative frequency of them, and finds the
language that matches best.


### Challenges

This software does not work as well when the input text to analyze is short, or unclean. For example tweets.

When a text is written in multiple languages, the default algorithm of this software is not appropriate.
You can try to split the text (by sentence or paragraph) and detect the individual parts. Running the language guesser
on the whole text will just tell you the language that is most dominant, in the best case.

This software cannot handle it well when the input text is in none of the expected (and supported) languages.
For example if you only load the language profiles from English and German, but the text is written in French,
the program may pick the more likely one, or say it doesn't know. (An improvement would be to clearly detect that
it's unlikely one of the supported languages.)

If you are looking for a language detector / language guesser library in Java, this seems to be the best open source
library you can get at this time. If it doesn't need to be Java, you may want to take a look at https://code.google.com/p/cld2/

## How You Can Help

If your language is not supported yet, then you can provide clean "training text", that is, common text written in your
language. The text should be fairly long (a couple of pages at the very least). If you can provide that, please open
a ticket.

If your language is supported already, but not identified clearly all the time, you can still provide such training
text. We might then be able to improve detection for your language.

If you're a programmer, dig in the source and see what you can improve. Check the open tasks.


## History and Changes

This project is a fork of a fork, the original author is Nakatani Shuyo.
For detail see https://github.com/optimaize/language-detector/wiki/History-and-Changes

## License

Apache 2 (business friendly)


## Authors

Nakatani Shuyo, Fabian Kessler, Francois ROLAND, Robert Theis, Kju2

For detail see https://github.com/optimaize/language-detector/wiki/Authors

## References


### Research Papers and Articles on Language Identification
- [Automatic Language Identification in Texts: A Survey (2018)](https://arxiv.org/abs/1804.08186)


### Libraries for Language Identification
- Compact Language Detector 2 ([C++](https://github.com/CLD2Owners/cld2), 83 languages supported) uses Naïve Bayesian classifier for language identification. The library can handle HTML and is optimized for texts with 200 characters.
- Compact Language Detector 3 ([C++](https://github.com/google/cld3), ? languages supported) is used in Chromium and based on a neural network. 
- Langid ([C](https://github.com/saffsd/langid.c), [Javascript](https://github.com/saffsd/langid.js), [Python](https://github.com/saffsd/langid.py)) is a library for language detection with models for 97 languages included. It is based on [Langid.py: an off-the-shelf language identification tool (2012)](https://dl.acm.org/citation.cfm?id=2390475).
- Language-Detection ([Java](https://github.com/shuyo/language-detection), [Wiki](https://code.google.com/archive/p/language-detection/), [Slides](https://www.slideshare.net/shuyo/language-detection-library-for-java)) for 53 languages. This is the origin of this library and unfortunately no longer maintained.


### Webservices for Language Identification
- [API Layer](https://apilayer.com)
- [Cortal](http://www.cortical.io/detect-language.html)
- [Detect Language](https://detectlanguage.com)
- [Google Translation API](https://cloud.google.com/translate/docs/detecting-language)
- [Microsoft Azure Cognitive Services](https://docs.microsoft.com/en-us/azure/cognitive-services/text-analytics/how-tos/text-analytics-how-to-language-detection)
- [UClassify](https://uclassify.com/browse/uclassify/language-detector)
