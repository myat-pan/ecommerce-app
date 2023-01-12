class ProductList {
  ProductList({
    this.categoryId,
    this.content,
    this.displayName,
    this.enableNoindexMetaTag,
    this.marketingTiles,
    this.products,
    this.refinements,
    this.responseSource,
    this.seoCanonicalUrl,
    this.seoKeywords,
    this.seoMetaDescription,
    this.seoName,
    this.seoTitle,
    this.targetUrl,
    this.template,
    this.totalProducts,
  });

  String? categoryId;
  Content? content;
  String? displayName;
  bool? enableNoindexMetaTag;
  List<MarketingTile?>? marketingTiles;
  List<Product?>? products;
  List<Refinement?>? refinements;
  String? responseSource;
  String? seoCanonicalUrl;
  List<dynamic>? seoKeywords;
  String? seoMetaDescription;
  String? seoName;
  String? seoTitle;
  String? targetUrl;
  int? template;
  int? totalProducts;

  ProductList copyWith({
    String? categoryId,
    Content? content,
    String? displayName,
    bool? enableNoindexMetaTag,
    List<MarketingTile?>? marketingTiles,
    List<Product?>? products,
    List<Refinement?>? refinements,
    String? responseSource,
    String? seoCanonicalUrl,
    List<dynamic>? seoKeywords,
    String? seoMetaDescription,
    String? seoName,
    String? seoTitle,
    String? targetUrl,
    int? template,
    int? totalProducts,
  }) =>
      ProductList(
        categoryId: categoryId ?? this.categoryId,
        content: content ?? this.content,
        displayName: displayName ?? this.displayName,
        enableNoindexMetaTag: enableNoindexMetaTag ?? this.enableNoindexMetaTag,
        marketingTiles: marketingTiles ?? this.marketingTiles,
        products: products ?? this.products,
        refinements: refinements ?? this.refinements,
        responseSource: responseSource ?? this.responseSource,
        seoCanonicalUrl: seoCanonicalUrl ?? this.seoCanonicalUrl,
        seoKeywords: seoKeywords ?? this.seoKeywords,
        seoMetaDescription: seoMetaDescription ?? this.seoMetaDescription,
        seoName: seoName ?? this.seoName,
        seoTitle: seoTitle ?? this.seoTitle,
        targetUrl: targetUrl ?? this.targetUrl,
        template: template ?? this.template,
        totalProducts: totalProducts ?? this.totalProducts,
      );
}

class Content {
  Content({
    this.bestsellersTargetUrl,
    this.justArrivedTargetUrl,
    this.region3,
    this.seoCanonicalUrl,
    this.seoKeywords,
    this.seoMetaDescription,
    this.seoName,
    this.seoTitle,
    this.targetUrl,
  });

  String? bestsellersTargetUrl;
  String? justArrivedTargetUrl;
  List<Region3?>? region3;
  String? seoCanonicalUrl;
  List<dynamic>? seoKeywords;
  String? seoMetaDescription;
  String? seoName;
  String? seoTitle;
  String? targetUrl;

  Content copyWith({
    String? bestsellersTargetUrl,
    String? justArrivedTargetUrl,
    List<Region3?>? region3,
    String? seoCanonicalUrl,
    List<dynamic>? seoKeywords,
    String? seoMetaDescription,
    String? seoName,
    String? seoTitle,
    String? targetUrl,
  }) =>
      Content(
        bestsellersTargetUrl: bestsellersTargetUrl ?? this.bestsellersTargetUrl,
        justArrivedTargetUrl: justArrivedTargetUrl ?? this.justArrivedTargetUrl,
        region3: region3 ?? this.region3,
        seoCanonicalUrl: seoCanonicalUrl ?? this.seoCanonicalUrl,
        seoKeywords: seoKeywords ?? this.seoKeywords,
        seoMetaDescription: seoMetaDescription ?? this.seoMetaDescription,
        seoName: seoName ?? this.seoName,
        seoTitle: seoTitle ?? this.seoTitle,
        targetUrl: targetUrl ?? this.targetUrl,
      );
}

class Region3 {
  Region3({
    this.componentName,
    this.componentType,
    this.enableTesting,
    this.links,
    this.name,
    this.testEnabled,
    this.title,
    this.backgroundImagePath,
    this.launchImagePath,
    this.productFinderName,
    this.progressBarMaxSteps,
    this.resultsPageMediaId,
    this.surveyNumberAndroid,
    this.surveyNumberiOs,
  });

  String? componentName;
  int? componentType;
  bool? enableTesting;
  List<Link?>? links;
  String? name;
  bool? testEnabled;
  String? title;
  String? backgroundImagePath;
  String? launchImagePath;
  String? productFinderName;
  String? progressBarMaxSteps;
  String? resultsPageMediaId;
  String? surveyNumberAndroid;
  String? surveyNumberiOs;

  Region3 copyWith({
    String? componentName,
    int? componentType,
    bool? enableTesting,
    List<Link?>? links,
    String? name,
    bool? testEnabled,
    String? title,
    String? backgroundImagePath,
    String? launchImagePath,
    String? productFinderName,
    String? progressBarMaxSteps,
    String? resultsPageMediaId,
    String? surveyNumberAndroid,
    String? surveyNumberiOs,
  }) =>
      Region3(
        componentName: componentName ?? this.componentName,
        componentType: componentType ?? this.componentType,
        enableTesting: enableTesting ?? this.enableTesting,
        links: links ?? this.links,
        name: name ?? this.name,
        testEnabled: testEnabled ?? this.testEnabled,
        title: title ?? this.title,
        backgroundImagePath: backgroundImagePath ?? this.backgroundImagePath,
        launchImagePath: launchImagePath ?? this.launchImagePath,
        productFinderName: productFinderName ?? this.productFinderName,
        progressBarMaxSteps: progressBarMaxSteps ?? this.progressBarMaxSteps,
        resultsPageMediaId: resultsPageMediaId ?? this.resultsPageMediaId,
        surveyNumberAndroid: surveyNumberAndroid ?? this.surveyNumberAndroid,
        surveyNumberiOs: surveyNumberiOs ?? this.surveyNumberiOs,
      );
}

class Link {
  Link({
    this.componentName,
    this.componentType,
    this.enableTesting,
    this.linkText,
    this.name,
    this.targetScreen,
    this.testEnabled,
  });

  String? componentName;
  int? componentType;
  bool? enableTesting;
  String? linkText;
  String? name;
  TargetScreen? targetScreen;
  bool? testEnabled;

  Link copyWith({
    String? componentName,
    int? componentType,
    bool? enableTesting,
    String? linkText,
    String? name,
    TargetScreen? targetScreen,
    bool? testEnabled,
  }) =>
      Link(
        componentName: componentName ?? this.componentName,
        componentType: componentType ?? this.componentType,
        enableTesting: enableTesting ?? this.enableTesting,
        linkText: linkText ?? this.linkText,
        name: name ?? this.name,
        targetScreen: targetScreen ?? this.targetScreen,
        testEnabled: testEnabled ?? this.testEnabled,
      );
}

class TargetScreen {
  TargetScreen({
    this.targetScreen,
    this.targetValue,
  });

  String? targetScreen;
  String? targetValue;

  TargetScreen copyWith({
    String? targetScreen,
    String? targetValue,
  }) =>
      TargetScreen(
        targetScreen: targetScreen ?? this.targetScreen,
        targetValue: targetValue ?? this.targetValue,
      );
}

class MarketingTile {
  MarketingTile({
    this.altText,
    this.componentName,
    this.componentType,
    this.enableTesting,
    this.imageHeight,
    this.imageSource,
    this.imageWidth,
    this.name,
    this.targetUrl,
    this.targetWindow,
  });

  String? altText;
  String? componentName;
  int? componentType;
  bool? enableTesting;
  String? imageHeight;
  String? imageSource;
  String? imageWidth;
  String? name;
  String? targetUrl;
  int? targetWindow;

  MarketingTile copyWith({
    String? altText,
    String? componentName,
    int? componentType,
    bool? enableTesting,
    String? imageHeight,
    String? imageSource,
    String? imageWidth,
    String? name,
    String? targetUrl,
    int? targetWindow,
  }) =>
      MarketingTile(
        altText: altText ?? this.altText,
        componentName: componentName ?? this.componentName,
        componentType: componentType ?? this.componentType,
        enableTesting: enableTesting ?? this.enableTesting,
        imageHeight: imageHeight ?? this.imageHeight,
        imageSource: imageSource ?? this.imageSource,
        imageWidth: imageWidth ?? this.imageWidth,
        name: name ?? this.name,
        targetUrl: targetUrl ?? this.targetUrl,
        targetWindow: targetWindow ?? this.targetWindow,
      );
}

class Product {
  Product({
    this.brandName,
    this.currentSku,
    this.displayName,
    this.heroImage,
    this.image135,
    this.image250,
    this.image450,
    this.productId,
    this.rating,
    this.reviews,
    this.targetUrl,
    this.heroImageAltText,
    this.moreColors,
  });

  String? brandName;
  CurrentSku? currentSku;
  String? displayName;
  String? heroImage;
  String? image135;
  String? image250;
  String? image450;
  String? productId;
  String? rating;
  String? reviews;
  String? targetUrl;
  HeroImageAltText? heroImageAltText;
  int? moreColors;

  Product copyWith({
    String? brandName,
    CurrentSku? currentSku,
    String? displayName,
    String? heroImage,
    String? image135,
    String? image250,
    String? image450,
    String? productId,
    String? rating,
    String? reviews,
    String? targetUrl,
    HeroImageAltText? heroImageAltText,
    int? moreColors,
  }) =>
      Product(
        brandName: brandName ?? this.brandName,
        currentSku: currentSku ?? this.currentSku,
        displayName: displayName ?? this.displayName,
        heroImage: heroImage ?? this.heroImage,
        image135: image135 ?? this.image135,
        image250: image250 ?? this.image250,
        image450: image450 ?? this.image450,
        productId: productId ?? this.productId,
        rating: rating ?? this.rating,
        reviews: reviews ?? this.reviews,
        targetUrl: targetUrl ?? this.targetUrl,
        heroImageAltText: heroImageAltText ?? this.heroImageAltText,
        moreColors: moreColors ?? this.moreColors,
      );
}

class CurrentSku {
  CurrentSku({
    this.biExclusiveLevel,
    this.imageAltText,
    this.isAppExclusive,
    this.isBi,
    this.isBest,
    this.isFirstAccess,
    this.isLimitedEdition,
    this.isLimitedTimeOffer,
    this.isNatural,
    this.isNew,
    this.isOnlineOnly,
    this.isOrganic,
    this.isSephoraExclusive,
    this.listPrice,
    this.salePrice,
    this.skuId,
    this.skuImages,
    this.skuType,
    this.badgeAltText,
    this.valuePrice,
  });

  BiExclusiveLevel? biExclusiveLevel;
  String? imageAltText;
  bool? isAppExclusive;
  bool? isBi;
  bool? isBest;
  bool? isFirstAccess;
  bool? isLimitedEdition;
  bool? isLimitedTimeOffer;
  bool? isNatural;
  bool? isNew;
  bool? isOnlineOnly;
  bool? isOrganic;
  bool? isSephoraExclusive;
  String? listPrice;
  String? salePrice;
  String? skuId;
  SkuImages? skuImages;
  SkuType? skuType;
  BadgeAltText? badgeAltText;
  String? valuePrice;

  CurrentSku copyWith({
    BiExclusiveLevel? biExclusiveLevel,
    String? imageAltText,
    bool? isAppExclusive,
    bool? isBi,
    bool? isBest,
    bool? isFirstAccess,
    bool? isLimitedEdition,
    bool? isLimitedTimeOffer,
    bool? isNatural,
    bool? isNew,
    bool? isOnlineOnly,
    bool? isOrganic,
    bool? isSephoraExclusive,
    String? listPrice,
    String? salePrice,
    String? skuId,
    SkuImages? skuImages,
    SkuType? skuType,
    BadgeAltText? badgeAltText,
    String? valuePrice,
  }) =>
      CurrentSku(
        biExclusiveLevel: biExclusiveLevel ?? this.biExclusiveLevel,
        imageAltText: imageAltText ?? this.imageAltText,
        isAppExclusive: isAppExclusive ?? this.isAppExclusive,
        isBi: isBi ?? this.isBi,
        isBest: isBest ?? this.isBest,
        isFirstAccess: isFirstAccess ?? this.isFirstAccess,
        isLimitedEdition: isLimitedEdition ?? this.isLimitedEdition,
        isLimitedTimeOffer: isLimitedTimeOffer ?? this.isLimitedTimeOffer,
        isNatural: isNatural ?? this.isNatural,
        isNew: isNew ?? this.isNew,
        isOnlineOnly: isOnlineOnly ?? this.isOnlineOnly,
        isOrganic: isOrganic ?? this.isOrganic,
        isSephoraExclusive: isSephoraExclusive ?? this.isSephoraExclusive,
        listPrice: listPrice ?? this.listPrice,
        salePrice: salePrice ?? this.salePrice,
        skuId: skuId ?? this.skuId,
        skuImages: skuImages ?? this.skuImages,
        skuType: skuType ?? this.skuType,
        badgeAltText: badgeAltText ?? this.badgeAltText,
        valuePrice: valuePrice ?? this.valuePrice,
      );
}

enum BadgeAltText {
  CLEAN_AT_SEPHORA,
  ALLURE_2019_BEST_OF_BEAUTY_AWARD_WINNER,
  CLEAN_PLUS_PLANET_POSITIVE,
  ALLURE_2022_BEST_OF_BEAUTY_AWARD_WINNER,
  ALLURE_2020_BEST_OF_BEAUTY_AWARD_WINNER
}

enum BiExclusiveLevel { NONE }

class SkuImages {
  SkuImages({
    this.image135,
    this.image162,
    this.image250,
    this.image42,
    this.image450,
    this.image62,
    this.image97,
  });

  String? image135;
  String? image162;
  String? image250;
  String? image42;
  String? image450;
  String? image62;
  String? image97;

  SkuImages copyWith({
    String? image135,
    String? image162,
    String? image250,
    String? image42,
    String? image450,
    String? image62,
    String? image97,
  }) =>
      SkuImages(
        image135: image135 ?? this.image135,
        image162: image162 ?? this.image162,
        image250: image250 ?? this.image250,
        image42: image42 ?? this.image42,
        image450: image450 ?? this.image450,
        image62: image62 ?? this.image62,
        image97: image97 ?? this.image97,
      );
}

enum SkuType { STANDARD }

enum HeroImageAltText {
  CLEAN_AT_SEPHORA,
  ALLURE_BEST_OF_BEAUTY_2019,
  ALLURE_BEST_OF_BEAUTY_SEAL
}

class Refinement {
  Refinement({
    this.displayName,
    this.type,
    this.values,
  });

  String? displayName;
  String? type;
  List<Value?>? values;

  Refinement copyWith({
    String? displayName,
    String? type,
    List<Value?>? values,
  }) =>
      Refinement(
        displayName: displayName ?? this.displayName,
        type: type ?? this.type,
        values: values ?? this.values,
      );
}

class Value {
  Value({
    this.refinementValue,
    this.refinementValueDisplayName,
    this.refinementValueId,
    this.refinementValueStatus,
    this.high,
    this.low,
  });

  String? refinementValue;
  String? refinementValueDisplayName;
  int? refinementValueId;
  int? refinementValueStatus;
  int? high;
  int? low;

  Value copyWith({
    String? refinementValue,
    String? refinementValueDisplayName,
    int? refinementValueId,
    int? refinementValueStatus,
    int? high,
    int? low,
  }) =>
      Value(
        refinementValue: refinementValue ?? this.refinementValue,
        refinementValueDisplayName:
            refinementValueDisplayName ?? this.refinementValueDisplayName,
        refinementValueId: refinementValueId ?? this.refinementValueId,
        refinementValueStatus:
            refinementValueStatus ?? this.refinementValueStatus,
        high: high ?? this.high,
        low: low ?? this.low,
      );
}
