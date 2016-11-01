function missingDrone(deliveryIds){
  var idsToOccurences = new Map();

  deliveryIds.forEach(function(deliveryId){
    if (idsToOccurences.has(deliveryIds)) {
      var newCount = idsToOccurences.get(deliveryId) + 1;
      idsToOccurences.set(deliveryId, newCount);
    } else {
      idsToOccurences.set(deliverId, 1)
    }
  });

  for (var [id, count] of idsToOccurences){
    if (count === 1){
      return id;
    }
  }
}
