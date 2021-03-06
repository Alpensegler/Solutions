class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var left = 0, right = height.count - 1, maxArea = 0
        while left < right {
            maxArea = max(maxArea, min(height[left], height[right]) * (right - left))
            if height[left] < height[right] {
                left += 1
            } else {
                right -= 1
            }
        }
        return maxArea
    }
}