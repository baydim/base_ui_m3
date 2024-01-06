import 'dart:developer';
import 'dart:math' as math;

String roomRandomUtil() {
  var url = [
    "https://th.bing.com/th/id/OIG.H3F5E6PmS3.1wBuodwHV?w=1024&h=1024&rs=1&pid=ImgDetMain",
    "https://th.bing.com/th/id/OIG.oRrKj_uGE0NC8HaqpVjm?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.TqrIG6897MEfPFBYjqfz?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.H3F5E6PmS3.1wBuodwHV?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.kxeK5hGQ.rGb140FfPTp?w=1024&h=1024&rs=1&pid=ImgDetMain",
    "https://th.bing.com/th/id/OIG.qvbk.Mg8IzarIGwJ2Uqb?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.V69oR2b8eXJteWVEkX8f?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.s6C0eYNb_Skz_WBcr7P8?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.t7IWJ.5v80VQuuaYAk6R?w=1024&h=1024&rs=1&pid=ImgDetMain",
    "https://th.bing.com/th/id/OIG.Wk6AR1tp5NKVw16OKVW4?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.5_9TNl6y0qdht3pDMGjw?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.AuhOqW8.5lxROlAAuJFv?w=1024&h=1024&rs=1&pid=ImgDetMain",
    "https://th.bing.com/th/id/OIG.VtqepS5GA60KNgEd.yOs?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.AM6CpVmj54ki_7HnIrX_?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.vuIzd4pfeTfdLxhB9pG7?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.AM6CpVmj54ki_7HnIrX_?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.kE0Zhwc2H7ttbvDc4wSl?pid=ImgGn",
  ];

  var random = math.Random();
  var randomIndex = random.nextInt(url.length);
  log(randomIndex.toString());

  return url[randomIndex];
}

String promoRandomUtil() {
  var url = [
    "https://th.bing.com/th/id/OIG.HaTwF4tamiGpeIImqJyN?w=1024&h=1024&rs=1&pid=ImgDetMain",
    "https://th.bing.com/th/id/OIG.23UClhMw42Uo7ZSE7kDo?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.HaTwF4tamiGpeIImqJyN?w=1024&h=1024&rs=1&pid=ImgDetMain",
    "https://github.com/baydim/base_ui_m3/blob/main/assets/images/_0d3f9f78-2345-4c1b-8119-a5c367bf7d48.jpeg?raw=true",
    "https://th.bing.com/th/id/OIG.JtYANL_5rmLdPwsSikrF?pid=ImgGn",
    "https://th.bing.com/th/id/OIG..8TrmdZ9p7HcFxmaYq.M?w=1024&h=1024&rs=1&pid=ImgDetMain",
    "https://th.bing.com/th/id/OIG.ufTEtDgdYGz70Rh6N9tB?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.0TFYBiYxjF8RCAG3MNhp?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.IvBfRGG1EP6nWLrvb8j8?pid=ImgGn",
  ];

  var random = math.Random();
  var randomIndex = random.nextInt(url.length);
  log(randomIndex.toString());

  var randomUrl = url[randomIndex];
  return randomUrl;
}
