pragma circom 2.0.0;

include "../functions/getNextIndexForMove.circom";
include "../functions/getTileCodeFromIndex.circom";
include "../functions/isTileOpenForSide.circom";

function invertDirection(direction) {
    if (direction == 0) {
        return 2;
    } else if (direction == 1) {
        return 3;
    } else if (direction == 2) {
        return 0;
    } else {
      return 1;
    }
}

template Game(N) {
  signal input moves[N];

  // result
  signal output movesValid;

  var currentTileCode;
  var nextTileCode;
  var currentIndex = 0;
  var nextIndex;
  var currentDirection;
  var nextDirection;
  var movesOk = 1;
  var moveOk;
  var movesEnded = 0;

  for (var m = 0; m < N; m++) {
    currentDirection = moves[m];

    // Get current tile type
    currentTileCode = getTileCodeFromIndex(currentIndex);

    // Check if exiting the tile in that direction is ok
    moveOk = isTileOpenForSide(currentTileCode, currentDirection);
    movesOk *= moveOk; // I.e. if success is zero, movesOk becomes zero

    // Get the next index
    nextIndex = getNextIndexForMove(currentIndex, currentDirection);

    // Get the type of tile for next index
    nextTileCode = getTileCodeFromIndex(nextIndex);

    // Check if entering in that direction is ok
    nextDirection = invertDirection(currentDirection);
    moveOk = isTileOpenForSide(nextTileCode, nextDirection);
    movesOk *= moveOk; // I.e. if success is zero, movesOk becomes zero

    currentIndex = nextIndex;
  }

  movesValid <-- movesOk;
}
