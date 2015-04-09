// https://css-tricks.com/equal-height-blocks-in-rows/
function HeightEqualizer($selector, contentSelector) {
    var currentTallest = 0,
        currentRowStart = 0,
        rowDivs = new Array(),
        $el,
        topPosition = 0;

    function getHeight($el) {
        if (!contentSelector)
            return $el.height();
        return $el.find(contentSelector).height() + 100;
    }

    $selector.each(function() {
        $el = $(this);
        topPosition = $el.position().top;

        if (currentRowStart != topPosition) {
            for (currentDiv = 0 ; currentDiv < rowDivs.length ; currentDiv++) {
                rowDivs[currentDiv].height(currentTallest);
            }

            rowDivs.length = 0;
            currentRowStart = topPosition;
            currentTallest = getHeight($el);
            rowDivs.push($el);
        } else {
            rowDivs.push($el);
            currentTallest = currentTallest < getHeight($el) ? getHeight($el) : currentTallest;
        }

        for (currentDiv = 0 ; currentDiv < rowDivs.length ; currentDiv++) {
            rowDivs[currentDiv].height(currentTallest);
        }

    });
}
