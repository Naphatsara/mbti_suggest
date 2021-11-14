'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "cee09067e4213007a5010ee7edc4d353",
"assets/assets/images/ana.png": "49ec5228c6589e4c5c9f34d4b9cd3a5c",
"assets/assets/images/bg1.jpg": "83a1d861d918bbddac20cad79584b86f",
"assets/assets/images/bg11.png": "79fcba2ef873b3d2bb8f7674aadf4815",
"assets/assets/images/bg2.jpg": "50d1bee9c3e763492e1a3cf3060e2bc5",
"assets/assets/images/bg3.jpg": "642a9358113214c61e034c8d9caf41d6",
"assets/assets/images/bg4.jpg": "fba08d05a0e3211bc2c6b358752b6de0",
"assets/assets/images/bg_green.jpg": "143217d8edecfdcedfe45b82b30dbe87",
"assets/assets/images/dip.png": "ed41f652e3b5d85fbaf946e92658345f",
"assets/assets/images/ENFJ.png": "a6bfeb1baff6dc82732676dcb403e9d2",
"assets/assets/images/ENFP.png": "b8b3451780558b9ce7cc7dbfc81eb936",
"assets/assets/images/ENTJ.jpg": "124677a8587ebfd64d62ccd5853fe425",
"assets/assets/images/ENTP.png": "cdf75a15ea0391655feeeaf29fb29063",
"assets/assets/images/ESFJ.png": "00d9fb00511766bb7bd2f8f378e6908a",
"assets/assets/images/ESFP.png": "2c430d90110cb0e497af0c1b83140dd8",
"assets/assets/images/ESTJ.png": "5945cd443d0dc2dcd3618a5bfc218d6b",
"assets/assets/images/ESTP.png": "16be7ab27b66f8d34d1574602e616da0",
"assets/assets/images/exp.png": "ea93e3d17793f20399d7d4164d188d26",
"assets/assets/images/INFJ.png": "5d6e01eeab4fe6be8acbaf9a61421644",
"assets/assets/images/INFP.png": "3361624130bd35ce58c987ddeeab5ff2",
"assets/assets/images/INTJ.png": "181a96d007fbfdcd2bbdc7fc2daca770",
"assets/assets/images/INTP.png": "21a63f82816e9f6af43f8652a5e09689",
"assets/assets/images/ISFJ.png": "ab6ada5d8096e1ee8c61a84ac48fdb3f",
"assets/assets/images/ISFP.png": "ec6701cd694cb3c31e2cea4a9b612736",
"assets/assets/images/ISTJ.png": "bd80229dd7d6290c9b2b98e6326a5b52",
"assets/assets/images/ISTP.png": "612afeb59f5858cf449e631498f2a03d",
"assets/assets/images/mbti.jpg": "626359bb3d9179d8e43a407fadd4e0d3",
"assets/assets/images/mbti1.jpg": "2e9815b5dacf796ed5f05bf82613c3f7",
"assets/assets/images/mbti10.jpg": "d50a4cd225ee57137d7ca75750c90ec7",
"assets/assets/images/mbti6.jpg": "fdeb63f559bee862f80d78afb3d26d29",
"assets/assets/images/mbti7.png": "fec1d34c604ca5071aaf28a31e13435e",
"assets/assets/images/mbti8.png": "c25ff874edf4fbc3730560601769174a",
"assets/assets/images/sen.png": "0ac59d73e9c32b19127e4db30ffaf079",
"assets/assets/images/splash_screen.png": "7de09e7ab1a873155192e48dc81cd345",
"assets/assets/images/spsc1.jpg": "d16d5885a51f66c0bee16475e5b79904",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/NOTICES": "b190d1a83962890f013f8563eba1595a",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "5967d4bc2a7b8b0939d58d3b1a973a76",
"/": "5967d4bc2a7b8b0939d58d3b1a973a76",
"main.dart.js": "b59de69921417fb1bb96ef1762360885",
"manifest.json": "219c50d27664d3e1d1a47e19e72c1f92",
"version.json": "b9858d22baea5799799e683d07551b29"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
